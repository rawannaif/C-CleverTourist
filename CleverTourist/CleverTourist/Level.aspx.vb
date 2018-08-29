Public Class Level
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ErrMsg.Text = ""
    End Sub

    Protected Sub NextPageBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles NextPageBtn.Click
        ErrMsg.Text = ""

        Dim LowLevel As Integer
        If L1.Checked Then
            LowLevel = 1
        ElseIf L2.Checked Then
            LowLevel = 2
        ElseIf L3.Checked Then
            LowLevel = 3
        ElseIf L4.Checked Then
            LowLevel = 4
        Else
            ErrMsg.Text = "Kindly, select Place Level."
            Return
        End If
        Session("LowLevel") = LowLevel
        Session("HighLevel") = LowLevel + 1

        Response.Redirect("Money.aspx")
    End Sub

End Class