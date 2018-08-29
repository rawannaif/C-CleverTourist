<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Packages.aspx.vb" Inherits="CleverTourist.Packages" %>

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
        <asp:Table ID="SelectionTbl" runat="server" CellPadding="5" BorderStyle="Solid" 
            GridLines="Both" style="margin: auto">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Text="Price per Person" />
                <asp:TableHeaderCell Text="Days" />
                <asp:TableHeaderCell Text="Level" />
                <asp:TableHeaderCell Text="Country" />
                <asp:TableHeaderCell Text="City" />
                <asp:TableHeaderCell Text="Weather" />
                <asp:TableHeaderCell Text="Place" />
                <asp:TableHeaderCell Text="Air Class" />
                <asp:TableHeaderCell Text="Av. From" />
                <asp:TableHeaderCell Text="Av. To" />
                <asp:TableHeaderCell Text="Sales Agent" />
                <asp:TableHeaderCell Text="" />
            </asp:TableHeaderRow>
        </asp:Table>
        <br />
        <h2>
            <asp:Label ID="ErrMsg" runat="server" Font-Bold="True" ForeColor="Red" Text="" />
        </h2> 
    </div>

    <asp:SqlDataSource ID="SelectionSql" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SalesAgents.SalesAgentName, Countries.CountryName, Cities.CityName, Tours.AvailableFrom, Tours.AvailableTo, Tours.TourDays, Tours.TourPrice, Places.PlaceName, Places.PlaceLevel, Tours.CityId, Tours.ClassId, Classes.ClassName, Cities.WeatherId, Weathers.WeatherName FROM Cities INNER JOIN Countries ON Cities.CountryId = Countries.CountryId INNER JOIN Weathers ON Cities.WeatherId = Weathers.WeatherId INNER JOIN Tours ON Cities.CityId = Tours.CityId INNER JOIN Places ON Tours.PlaceId = Places.PlaceId INNER JOIN SalesAgents ON Tours.SalesAgentId = SalesAgents.SalesAgentId INNER JOIN Classes ON Tours.ClassId = Classes.ClassId ORDER BY Tours.TourPrice, Tours.TourDays DESC, Places.PlaceLevel DESC"></asp:SqlDataSource>

    </form>
</body>
</html>
