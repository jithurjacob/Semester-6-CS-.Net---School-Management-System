<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.master" AutoEventWireup="true" CodeFile="VIEWQNS.aspx.cs" Inherits="VIEWQNS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>

    #container table  a{
           background-color:#006699;

       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="qns" HeaderText="qns" SortExpression="qns" />
            <asp:BoundField DataField="c1" HeaderText="c1" SortExpression="c1" />
            <asp:BoundField DataField="c2" HeaderText="c2" SortExpression="c2" />
            <asp:BoundField DataField="c3" HeaderText="c3" SortExpression="c3" />
            <asp:BoundField DataField="c4" HeaderText="c4" SortExpression="c4" />
            <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" SelectCommand="SELECT * FROM [questions]"></asp:SqlDataSource>
</form>
</asp:Content>

