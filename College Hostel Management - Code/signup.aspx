<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 322px;
        }
        .auto-style1 {
            width: 145px;
        }
    </style>
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx" 
              Font-Size="Medium" ForeColor="#333333"><< Back to Home</asp:HyperLink>
    <br />
    <center>
    <table style="width: 1048px; height: 390px">
        <tr>
            <td class="style1">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/img/hostel-clip-art-white-md.png" />
            </td>
            <td valign="top">
            
           
        <table style="height: 359px; width: 416px">
            <tr>
                <td style="color: #CC0000" class="auto-style1">
                PERSONAL DETAILS:
                </td>
            </tr>
            <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Rollno"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtrollno" runat="server" AutoPostBack="True" 
                        ontextchanged="txtrollno_TextChanged"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrollno" ErrorMessage="enter rollno" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="enter name" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
                </td>
                <td align="justify">
                    <asp:DropDownList ID="dropdept" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>MECH</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                </td>
                <td align="justify">
                    <asp:DropDownList ID="dropcourse" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>B Tech</asp:ListItem>
                        <asp:ListItem>BE</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
              <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtyear" ErrorMessage="enter year" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Street 1"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtst1" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtst1" ErrorMessage="enter street1" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Street 2"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtst2" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtst2" ErrorMessage="enter street2" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="enter city" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstate" ErrorMessage="enter state" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Pin"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpin" ErrorMessage="enter pin" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="justify" class="auto-style1">
                    <asp:Label ID="Label11" runat="server" Text="Phone"></asp:Label>
                </td>
                <td align="justify">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtphone" ErrorMessage="enter phone" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

             </td>
            <td valign="top">
                <table style="height: 180px; width: 295px">
                  <tr>
                <td style="color: #CC0000">
                    ROOM DETAILS:
                </td>
            </tr>
                     <tr>
                <td align="justify">
                    <asp:Label ID="Label12" runat="server" Text="Room Type"></asp:Label>
                </td>
                <td align="justify">
                    <asp:DropDownList ID="droproomtype" runat="server" Font-Bold="True" 
                        Font-Names="Cambria">
                        <asp:ListItem>SINGLE ROOM</asp:ListItem>
                        <asp:ListItem>TWIN SHARING ROOM</asp:ListItem>
                        <asp:ListItem>THREE SHARING ROOM</asp:ListItem>
                        <asp:ListItem>DOMETRY</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td align="justify">
                    <asp:Label ID="Label13" runat="server" Text="Food"></asp:Label>
                </td>
                <td align="justify">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Veg" GroupName="food" Checked="true"/>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Non Veg" GroupName="food"/>
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Apply" Font-Bold="True" 
                        Font-Names="Cambria" Width="77px" onclick="Button1_Click" ValidationGroup="hostel" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Cambria" />
                </td>
            </tr>
                </table>
                <br />
                <table>
                    <tr>
                        <td style="color: #CC0000">
                            Room
                        Fees Details
                        </td>
                    </tr>
                </table>
               <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                            GridLines="Vertical" Width="284px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="roomtype" HeaderText="Room Type" 
                                    SortExpression="roomtype" />
                                <asp:BoundField DataField="ramt" HeaderText="Room Amount" 
                                    SortExpression="ramt" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:connect %>" 
                            SelectCommand="SELECT [roomtype], [ramt] FROM [roommas]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
               </table>
            </td>
        </tr>
    </table>
    </center>
    </div>
    </form>
</body>
</html>
