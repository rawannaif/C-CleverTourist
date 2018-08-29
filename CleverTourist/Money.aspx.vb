Public Class Money
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ErrMsg.Text = ""
        If IsPostBack = False Then
            ' first load of page
            MoneyChange.SelectedIndex = 0
        End If
    End Sub

    Protected Sub NextPageBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles NextPageBtn.Click
        ErrMsg.Text = ""
        Dim PeopleCount As Integer
        If Integer.TryParse(PeopleCountTxt.Text.Trim(), PeopleCount) = False Then
            ErrMsg.Text = "Kindly, enter No. of People correctly."
            Return
        End If
        If PeopleCount < 1 Then
            ErrMsg.Text = "Kindly, enter 1 at least in No. of People field."
            Return
        End If
        Session("PeopleCount") = PeopleCount

        Dim vMoney As Integer
        If Integer.TryParse(MoneyTxt.Text.Trim(), vMoney) = False Then
            ErrMsg.Text = "Kindly, enter Money to Spend correctly."
            Return
        End If
        If vMoney <= 0 Then
            ErrMsg.Text = "Kindly, enter a significant amount in Money to Spend field."
            Return
        End If
        Session("Spend") = vMoney

        If MoneyChange.SelectedIndex < 0 Then
            ErrMsg.Text = "Kindly, select the change pecent in planned money."
            Return
        End If
        Session("SpendChange") = MoneyChange.SelectedValue

        Session("Class") = ClassLst.SelectedValue
        Session("Weather") = WeatherLst.SelectedValue

        Response.Redirect("Packages.aspx")
    End Sub

End Class