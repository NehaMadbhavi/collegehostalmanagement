<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="checkavail.aspx.cs" Inherits="checkavail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
                GridLines="Vertical" Width="735px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="roomtype" HeaderText="Room Type" 
                        SortExpression="roomtype" />
                    <asp:BoundField DataField="ramt" HeaderText="Room Amount" 
                        SortExpression="ramt" />
                    <asp:BoundField DataField="noroom" HeaderText="Total No. of Rooms" 
                        SortExpression="noroom" />
                    <asp:BoundField DataField="nomem" HeaderText="No of Vaccancies Available" 
                        SortExpression="nomem">
                    <ItemStyle BackColor="#CCCCCC" ForeColor="#CC0000" />
                    </asp:BoundField>
                    <asp:BoundField DataField="filled" HeaderText="No of Members Filled" 
                        SortExpression="filled" />
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
                
                SelectCommand="SELECT [roomtype], [ramt], [noroom], [nomem], [filled] FROM [roomdet]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

