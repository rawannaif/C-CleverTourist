<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Level.aspx.vb" Inherits="CleverTourist.Level" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url('Pics/back.jpg'); background-repeat:no-repeat; background-position:top center; background-size:cover;">
    <form id="form1" runat="server">
    <div style="margin: 25px; padding:15px; background-color:rgba(255,255,255,0.75); color:navy;">
        <br /> 
        <h1>Clever Tourist</h1>
        <h2>Clever selection of touristic packages</h2>
        <br /><br /> 
        <p style="font-size:x-large;">
            Place Level:
        </p>
        <table cellpadding="10px">
            <tr>
                <td style="width:14px;">
                    <h2><asp:RadioButton runat="server" GroupName="Levels" ID="L1" Text="" /></h2>
                </td>
                <td align="center" style="width:460px;">
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    &nbsp;<h1 style="display:inline;">-</h1>&nbsp;
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                </td>
            </tr>
            <tr>
                <td>
                    <h2><asp:RadioButton runat="server" GroupName="Levels" ID="L2" Text="" /></h2>
                </td>
                <td align="center">
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    &nbsp;<h1 style="display:inline;">-</h1>&nbsp;
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                </td>
            </tr>
            <tr>
                <td>
                    <h2><asp:RadioButton runat="server" GroupName="Levels" ID="L3" Text="" /></h2>
                </td>
                <td align="center">
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    &nbsp;<h1 style="display:inline;">-</h1>&nbsp;
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                </td>
            </tr>
            <tr>
                <td>
                    <h2><asp:RadioButton runat="server" GroupName="Levels" ID="L4" Text="" /></h2>
                </td>
                <td align="center">
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    &nbsp;<h1 style="display:inline;">-</h1>&nbsp;
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                    <asp:Image runat="server" ImageUrl="~/Pics/ok.png" Width="40" />
                </td>
            </tr>
        </table>                         
        <p style="font-size:x-large;width:100%;text-align:center;">
           <asp:ImageButton ID="NextPageBtn" runat="server" ImageUrl="~/Pics/arrow.png"
            Width="180px" />
            &nbsp;&nbsp;&nbsp; 
            <asp:Label ID="ErrMsg" runat="server" Font-Bold="True" ForeColor="Red" Text="" />
        </p>
    </div>
    </form>
</body>
</html>
