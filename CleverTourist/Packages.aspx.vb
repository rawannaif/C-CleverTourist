Public Class Packages
    Inherits System.Web.UI.Page

    Private Cities() As Integer
    Private StartDate As Date
    Private EndDate As Date
    Private IsFlexiable As Boolean
    Private LowLevel As Integer
    Private HighLevel As Integer
    Private PeopleCount As Integer
    Private Spend As Integer
    Private SpendChange As Integer
    Private MaxPrice As Integer
    Private AirClass As Integer
    Private Weather As Integer
    Private RowCount As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ErrMsg.Text = ""
        FillFromSession()
        PreDss()
        StartDss()
    End Sub

    Private Sub FillFromSession()
        Cities = Session("SelectedCities")
        StartDate = Session("StartDate")
        EndDate = Session("EndDate")
        IsFlexiable = Session("IsFlexiable")
        LowLevel = Session("LowLevel")
        HighLevel = Session("HighLevel")
        PeopleCount = Session("PeopleCount")
        Spend = Session("Spend")
        SpendChange = Session("SpendChange")
        AirClass = Session("Class")
        Weather = Session("Weather")
    End Sub

    Private Sub PreDss()
        ' apply user flexiability
        If IsFlexiable Then
            EndDate = EndDate.AddDays(-4)
            StartDate = StartDate.AddDays(4)
        End If

        '  max price per person
        MaxPrice = (Spend + (Spend * SpendChange / 100)) / PeopleCount

        RowCount = 0
    End Sub

    Private Sub StartDss()
        ' getting data from DB ordered by:
        '    1 - price (lower to higher) 
        '    2 - days (longer to shorter)
        '    3 - place of stay level (higher to lower)
        Dim dataRows As IEnumerable
        dataRows = SelectionSql.Select(New DataSourceSelectArguments())
        For Each DataRow In dataRows
            ' checking the row: if it matches, add to table
            If IsRowMatch(DataRow) Then
                AddToSelection(DataRow)
                RowCount = RowCount + 1
            End If
        Next
        If RowCount = 0 Then
            ' no rows added
            ErrMsg.Text = "Sorry, nothing found for you."
        End If
    End Sub

    Private Function IsRowMatch(dataRow As Object) As Boolean
        Dim found As Boolean = False
        For Each city As Integer In Cities
            If city = dataRow("CityId") Then
                found = True
                Exit For
            End If
        Next
        If found = False Then
            ' user does not want to go to city of row
            Return False
        End If

        If (StartDate >= dataRow("AvailableFrom")) And (EndDate <= dataRow("AvailableTo")) Then
            ' row dates within user dates
        Else
            Return False
        End If

        If dataRow("TourPrice") > MaxPrice Then
            ' row price too high for user
            Return False
        End If

        If dataRow("PlaceLevel") < LowLevel Then
            ' place level is below user requirements
            Return False
        End If

        If dataRow("PlaceLevel") > HighLevel Then
            ' place level is above user requirements
            Return False
        End If

        If AirClass > 0 Then
            ' user has a class requirement
            If AirClass <> dataRow("ClassId") Then
                ' class not as user requirements
                Return False
            End If
        End If

        If Weather > 0 Then
            ' user has a weather requirement
            If Weather <> dataRow("WeatherId") Then
                ' Weather not as user requirements
                Return False
            End If
        End If

        ' match found
        Return True
    End Function

    Private Sub AddToSelection(dataRow As Object)
        Dim cells() As TableCell = Array.CreateInstance(GetType(TableCell), 12)
        For i = 0 To cells.GetUpperBound(0)
            cells(i) = New TableCell()
        Next
        cells(0).Text = dataRow("TourPrice")
        cells(1).Text = dataRow("TourDays")
        cells(2).Text = dataRow("PlaceLevel")
        cells(3).Text = dataRow("CountryName")
        cells(4).Text = dataRow("CityName")
        cells(5).Text = dataRow("WeatherName")
        cells(6).Text = dataRow("PlaceName")
        cells(7).Text = dataRow("ClassName")
        cells(8).Text = dataRow("AvailableFrom")
        cells(9).Text = dataRow("AvailableTo")
        cells(10).Text = dataRow("SalesAgentName")
        If RowCount = 0 Then
            ' this is first row
            cells(11).Text = "Best DSS"
        Else
            cells(11).Text = "Semi-Optimum"
        End If
        Dim row As New TableRow
        row.Cells.AddRange(cells)
        SelectionTbl.Rows.Add(row)
    End Sub

End Class