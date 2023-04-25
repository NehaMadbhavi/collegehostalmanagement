<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="height: 67px; width: 1320px;" bgcolor="#666666">
        <tr>
            <td align="center" style="font-size: large; color: #FFFFFF;">
            COLLEGE HOSTEL MANAGEMENT SYSTEM
            </td>
        </tr>
    </table>
    <table style="height: 7px; width: 1320px;" bgcolor="#CCCCCC">
        <tr>
            <td>
           
            </td>
        </tr>
    </table>
        <br />
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#666666" 
                        NavigateUrl="~/signup.aspx" Font-Size="Medium">Apply for Hostel &gt;&gt;&gt;</asp:HyperLink>
                </td>
            </tr>
        </table>
    <center style="height: 528px">
    <table style="width: 739px">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/secu.jpg" />
            </td>
            <td>
            
           
        <fieldset style="height: 198px; width: 364px">
            <legend>
            Login
            </legend>
            <table style="height: 157px; width: 317px" align="center" bgcolor="#CCCCCC">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                            Font-Names="Cambria" Width="65px" onclick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                            Font-Names="Cambria" />
                    </td>
                </tr>
            </table>
        </fieldset>

         </td>
        </tr>
    </table>
    </center>
    </div>
    </form>
</body>
</html>
