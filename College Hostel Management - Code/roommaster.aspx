<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="roommaster.aspx.cs" Inherits="roommaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td valign="top">
        
      
    <table style="height: 162px; width: 318px">
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
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                <asp:Label ID="Label4" runat="server" Text="Rs."></asp:Label>
                    <asp:TextBox ID="txtamount" runat="server" Width="66px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtamount" ErrorMessage="enter room amt" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="No of Rooms"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnoroom" runat="server" Width="85px" AutoPostBack="True" 
                        ontextchanged="txtnoroom_TextChanged"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnoroom" ErrorMessage="enter no of rooms" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Total Members"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttotmem" runat="server" Width="85px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttotmem" ErrorMessage="enter members" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" Font-Bold="True" 
                        Font-Names="Cambria" onclick="Button1_Click" Width="64px" ValidationGroup="hostel" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Cambria" Width="72px" />
                </td>
            </tr>
</table>

      </td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                GridLines="Vertical" Width="473px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="roomtype" HeaderText="Room Type" 
                        SortExpression="roomtype" />
                    <asp:BoundField DataField="ramt" HeaderText="Room Amt" SortExpression="ramt" />
                    <asp:BoundField DataField="noroom" HeaderText="No of Rooms" 
                        SortExpression="noroom" />
                    <asp:BoundField DataField="nomem" HeaderText="No of members" 
                        SortExpression="nomem" />
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
                SelectCommand="SELECT [roomtype], [ramt], [noroom], [nomem] FROM [roommas]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

