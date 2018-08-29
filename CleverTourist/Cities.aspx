<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cities.aspx.vb" Inherits="CleverTourist.Cities" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            direction: ltr;
        }
    </style>
</head>
<body style="background-image:url('Pics/back.jpg'); background-repeat:no-repeat; background-position:top center; background-size:cover;">
    <form id="form1" runat="server">
    <div style="margin: 25px; padding:15px; background-color:rgba(255,255,255,0.75); color:navy;">
        <table width="100%">
            <tr>
                <td style="vertical-align:top;">
                    <br /> 
                    <h1>Clever Tourist</h1>
                    <h2>Clever selection of touristic packages</h2>
                    <br /><br /> 
                    <p style="font-size:x-large;">
                        Country you want to go to:
                        <asp:DropDownList ID="CountryList" runat="server" Width="125px" 
                            DataSourceID="CountrySql" DataTextField="CountryName" 
                            DataValueField="CountryId" AutoPostBack="True" >
                        </asp:DropDownList>
                    </p>
                </td>
                <td style="vertical-align:top;">
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> 
                    <p style="font-size:x-large;">
                        City(s) you want to go to:
                        <br />
                        <asp:ListView ID="CityList" runat="server" DataKeyNames="CityId" DataSourceID="CitySql" GroupItemCount="2" >
                            <ItemTemplate>
                                <td runat="server" style="width:350px" align="center">
                                    <br />
                                    <br />
                                    <asp:Image ID="CityPic" runat="server" ImageUrl='<%# Eval("CityPicture", "~/Pics/{0}.jpg") %>' />
                                    <br />
                                    <br />
                                    <asp:CheckBox ID="CityChk" runat="server" Font-Bold="True" Text='<%# Eval("CityName") %>' TextAlign="Left" />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <td runat="server" style="width:350px" align="center" class="auto-style1">
                                    <br />
                                    <br />
                                    <asp:Image ID="CityPic" runat="server" ImageUrl='<%# Eval("CityPicture", "~/Pics/{0}.jpg") %>' />
                                    <br />
                                    <br />
                                    <asp:CheckBox ID="CityChk" runat="server" Font-Bold="True" Text='<%# Eval("CityName") %>' TextAlign="Left" />
                                    <br />
                                </td>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <td runat="server" style="">City Id:
                                    <asp:Label ID="CityIdTxt" runat="server" Text='<%# Eval("CityId") %>' />
                                    <br />
                                    City Name:
                                    <asp:TextBox ID="CityNameTxt" runat="server" Text='<%# Bind("CityName") %>' />
                                    <br />
                                    City Picture:
                                    <asp:TextBox ID="CityPicTxt" runat="server" Text='<%# Bind("CityPicture") %>' />
                                    <br />
                                    <asp:Button ID="UpdateBtn" runat="server" CommandName="Update" Text="Update" />
                                    <br />
                                    <asp:Button ID="CancelBtn" runat="server" CommandName="Cancel" Text="Cancel" />
                                    <br />
                                </td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="">
                                    <tr>
                                        <td>No city available.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">City Id:
                                    <asp:TextBox ID="CityIdTxt" runat="server" Text='<%# Bind("CityId") %>' />
                                    <br />
                                    City Name:
                                    <asp:TextBox ID="CityNameTxt" runat="server" Text='<%# Bind("CityName") %>' />
                                    <br />
                                    City Picture:
                                    <asp:TextBox ID="CityPicTxt" runat="server" Text='<%# Bind("CityPicture") %>' />
                                    <br />
                                    <asp:Button ID="InsertBtn" runat="server" CommandName="Insert" Text="Insert" />
                                    <br />
                                    <asp:Button ID="CancelBtn" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                </td>
                            </InsertItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="">&nbsp;</td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="">City Id:
                                    <asp:Label ID="CityIdTxt" runat="server" Text='<%# Eval("CityId") %>' />
                                    <br />
                                    City Name:
                                    <asp:Label ID="CityNameTxt" runat="server" Text='<%# Eval("CityName") %>' />
                                    <br />
                                    City Picture:
                                    <asp:Label ID="CityPicTxt" runat="server" Text='<%# Eval("CityPicture") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                    </asp:ListView>
                    </p>
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
    <asp:SqlDataSource ID="CountrySql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CountryId], [CountryName] FROM [Countries]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="CitySql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [CityId], [CityName], [CityPicture] FROM [Cities] WHERE ([CountryId] = @CountryId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="CountryList" Name="CountryId" 
                PropertyName="SelectedValue" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
