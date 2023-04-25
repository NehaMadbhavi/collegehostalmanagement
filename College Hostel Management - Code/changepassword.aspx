<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 146px; width: 586px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold" ErrorMessage="enter old pwd" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew" ErrorMessage="enter new pwd" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtretype" ErrorMessage="enter retype pwd" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtretype" ErrorMessage="Password mismatch" ForeColor="Red" ValidationGroup="hostel"></asp:CompareValidator>
        </td>
    </tr>
      <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" 
                Font-Names="Cambria" onclick="Button1_Click" ValidationGroup="hostel" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                Font-Names="Cambria" />
        </td>
    </tr>
</table>
</asp:Content>

