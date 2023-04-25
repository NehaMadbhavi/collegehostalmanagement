<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="approvedlist.aspx.cs" Inherits="approvedlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 1099px">
    <legend>
    Approved List
    </legend>

<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" Width="1075px" 
                ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                    <ItemStyle BackColor="#FF5050" />
                    </asp:BoundField>
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
                SelectCommand="SELECT [rollno], [name], [dept], [course], [year], [st1], [st2], [city], [state], [pin], [phone], [rtype], [food], [status] FROM [signupdet] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="approved" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</fieldset>
</asp:Content>

