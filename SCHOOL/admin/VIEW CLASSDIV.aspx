<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VIEW CLASSDIV.aspx.cs" Inherits="VIEW_CLASSDIV" MasterPageFile="~/admin/admin_master.master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
   <style>

    #container table  a{
           background-color:#006699;

       }
   </style>
     
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SchoolSorce" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="std" HeaderText="std" SortExpression="std" />
                <asp:BoundField DataField="div" HeaderText="div" SortExpression="div" />
            </Columns>
            <FooterStyle BackColor="#006699" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#006699" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#006699" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SchoolSorce" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" SelectCommand="SELECT [std], [div] FROM [classes]"></asp:SqlDataSource>
    
    </div>
    </form>
 </asp:Content>
