<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dates.aspx.vb" Inherits="CleverTourist.Dates" %>

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
        <table style="font-size:x-large;">
            <tr>
                <td>
                    Start Date:
                </td>
                <td>
                    <asp:Calendar ID="StartCal" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="300px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                    End Date:
                </td>
                <td>
                    <asp:Calendar ID="EndCal" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        Width="296px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:CheckBox ID="FlexiableChk" runat="server" Text="Flexiable Dates" 
                            ToolTip="+/- 4 days" Font-Bold="True" Font-Size="Large" />
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
