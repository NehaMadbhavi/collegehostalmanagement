<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="foodmas.aspx.cs" Inherits="foodmas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 562px; height: 41px">
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Breakfast" 
                Checked="True" GroupName="food" ForeColor="#CC0000" />
        </td>
         <td>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Lunch" 
                 GroupName="food" ForeColor="#CC0000" />
        </td>
         <td>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Dinner" 
                 GroupName="food" ForeColor="#CC0000" />
        </td>
         <td>
            <asp:RadioButton ID="RadioButton4" runat="server" Text="Snacks" 
                 GroupName="food" ForeColor="#CC0000" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td align="center">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#999999" Width="501px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter food name" ForeColor="Red" ValidationGroup="hostel"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
                Font-Names="Cambria" Width="103px" onclick="Button1_Click" ValidationGroup="hostel" />
            <br />
        </td>
    </tr>
</table>
<table style="width: 735px">
    <tr>
        <td align="center" valign="top">
        BREAKFAST :
            <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="food" HeaderText="AVAILABLE FOOD" 
                        SortExpression="food" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:connect %>" 
                SelectCommand="SELECT [food] FROM [foodmas] WHERE ([foodtype] = @foodtype)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="BREAKFAST" Name="foodtype" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
         <td align="center" valign="top">
        LUNCH :
             <br />
        <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                 GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="food" HeaderText="AVAILABLE FOOD" 
                        SortExpression="food" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:connect %>" 
                 SelectCommand="SELECT [food] FROM [foodmas] WHERE ([foodtype] = @foodtype)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="LUNCH" Name="foodtype" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </td>
         <td align="center" valign="top">
        DINNER :
             <br />
        <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                 GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="food" HeaderText="AVAILABLE FOOD" 
                        SortExpression="food" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:connect %>" 
                 SelectCommand="SELECT [food] FROM [foodmas] WHERE ([foodtype] = @foodtype)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="DINNER" Name="foodtype" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </td>
         <td align="center" valign="top">
        SNACKS :
             <br />
        <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" 
                 GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="food" HeaderText="AVAILABLE FOOD" 
                        SortExpression="food" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:connect %>" 
                 SelectCommand="SELECT [food] FROM [foodmas] WHERE ([foodtype] = @foodtype)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="SNACKS" Name="foodtype" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </td>

    </tr>
</table>
</asp:Content>

