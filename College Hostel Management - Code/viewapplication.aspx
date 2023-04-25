<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewapplication.aspx.cs" Inherits="viewapplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 1099px">
    <legend>
    Not Approved List
    </legend>

<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                GridLines="Vertical" Width="1075px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="rollno" HeaderText="Roll No" 
                        SortExpression="rollno" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="dept" HeaderText="Department" 
                        SortExpression="dept" />
                    <asp:BoundField DataField="course" HeaderText="Course" 
                        SortExpression="course" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="st1" HeaderText="Street 1" SortExpression="st1" />
                    <asp:BoundField DataField="st2" HeaderText="Street 2" SortExpression="st2" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="pin" HeaderText="Pin" SortExpression="pin" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="rtype" HeaderText="Room Type" 
                        SortExpression="rtype" />
                    <asp:BoundField DataField="food" HeaderText="Food" SortExpression="food" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                    <ItemStyle BackColor="#33CCCC" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="Approve Here" ShowSelectButton="True">
                    <ItemStyle ForeColor="#3333FF" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connect %>" 
                SelectCommand="SELECT [rollno], [name], [dept], [course], [year], [st1], [st2], [city], [state], [pin], [phone], [rtype], [food], [status] FROM [signupdet] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="not approved" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</fieldset>
</asp:Content>

