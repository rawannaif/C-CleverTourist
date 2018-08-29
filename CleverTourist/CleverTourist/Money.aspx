<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Money.aspx.vb" Inherits="CleverTourist.Money" %>

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
            No. of People:
            <asp:TextBox ID="PeopleCountTxt" runat="server"></asp:TextBox>
        </p>
        <p style="font-size:x-large;">
            Money to Spend:
            <asp:TextBox ID="MoneyTxt" runat="server"></asp:TextBox>
            <asp:DropDownList ID="MoneyChange" runat="server" Width="185px" 
                 AutoPostBack="True" DataSourceID="MoneyChangeSql" 
                DataTextField="SystemValueName" DataValueField="SystemValue" >
            </asp:DropDownList>
        </p>
        <p style="font-size:x-large;">
            Air Class:
            <asp:DropDownList ID="ClassLst" runat="server" Width="185px" 
                 AutoPostBack="True" DataSourceID="ClassesSql" 
                DataTextField="ClassName" DataValueField="ClassId" >
            </asp:DropDownList>
        </p>
        <p style="font-size:x-large;">
            Weather:
            <asp:DropDownList ID="WeatherLst" runat="server" Width="185px" 
                 AutoPostBack="True" DataSourceID="WeathersSql" 
                DataTextField="WeatherName" DataValueField="WeatherId" >
            </asp:DropDownList>
        </p>
        <p style="font-size:x-large;width:100%;text-align:center;">
           <asp:ImageButton ID="NextPageBtn" runat="server" ImageUrl="~/Pics/arrow.png"
            Width="180px" />
            &nbsp;&nbsp;&nbsp; 
            <asp:Label ID="ErrMsg" runat="server" Font-Bold="True" ForeColor="Red" Text="" />
        </p>
    </div>
    <asp:SqlDataSource ID="MoneyChangeSql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [SystemValue], [SystemValueName] FROM [SystemValues] WHERE ([SystemVariableId] = 1)">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="WeathersSql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [WeatherId], [WeatherName] FROM [Weathers] ORDER BY [WeatherId]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ClassesSql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [ClassId], [ClassName] FROM [Classes] ORDER BY [ClassId]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
