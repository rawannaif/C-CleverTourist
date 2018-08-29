Public Class Cities
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ErrMsg.Text = ""
    End Sub

    Protected Sub NextPageBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles NextPageBtn.Click
        ErrMsg.Text = ""
        Dim Cities As New List(Of Integer)
        Dim vCityChk As CheckBox
        For Each li As ListViewDataItem In CityList.Items
            vCityChk = li.FindControl("CityChk")
            If vCityChk.Checked Then
                Cities.Add(CityList.DataKeys(li.DataItemIndex).Value)
            End If
        Next
        If Cities.Count() = 0 Then
            ErrMsg.Text = "Kindly, select a city."
            Return
        End If
        Session("SelectedCities") = Cities.ToArray()

        Response.Redirect("Dates.aspx")
    End Sub

End Class