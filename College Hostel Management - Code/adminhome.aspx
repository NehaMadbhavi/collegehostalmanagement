<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 119px;
    }
    .style3
    {
        width: 178px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td style="color: #CC0000; font-size: medium">
            <marquee style="width: 875px; height: 34px">
            WELCOME ADMIN !!!!
            </marquee>
        </td>
    </tr>
</table>
<table style="height: 193px; width: 562px">
    <tr>
        <td class="style3">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/admin.png" />
        </td>
        <td>
            <table style="height: 131px; width: 247px" bgcolor="#CCCCCC">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Current Date"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="Current Time"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbltime" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

