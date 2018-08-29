Public Class Dates
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ErrMsg.Text = ""
        If IsPostBack = False Then
            ' first load of page
            StartCal.SelectedDate = Now
            EndCal.SelectedDate = Now
        End If
    End Sub

    Protected Sub NextPageBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles NextPageBtn.Click
        ErrMsg.Text = ""
        Dim vStartCal As Date = StartCal.SelectedDate
        If IsNothing(vStartCal) Then
            ErrMsg.Text = "Kindly, select Start Date."
            Return
        End If
        If vStartCal < Now.Date Then
            ErrMsg.Text = "Kindly, select Start Date in future."
            Return
        End If
        Session("StartDate") = vStartCal

        Dim vEndCal As Date = EndCal.SelectedDate
        If IsNothing(vEndCal) Then
            ErrMsg.Text = "Kindly, select End Date."
            Return
        End If
        If vEndCal < vStartCal Then
            ErrMsg.Text = "Kindly, select End Date after Start Date."
            Return
        End If
        Session("EndDate") = vEndCal

        Session("IsFlexiable") = FlexiableChk.Checked

        Response.Redirect("Level.aspx")
    End Sub

End Class