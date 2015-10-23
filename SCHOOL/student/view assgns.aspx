<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_master.master" AutoEventWireup="true" CodeFile="view assgns.aspx.cs" Inherits="student_view_assgns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> VIEW ASSIGNMENTS<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
    CellPadding="3" DataSourceID="SqlDataSource1" 
        ondatabound="GridView1_DataBound">
    <Columns>
        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
        <asp:BoundField DataField="subject" HeaderText="subject" 
            SortExpression="subject" />
        <asp:BoundField DataField="qns" HeaderText="TOPIC" SortExpression="qns" />
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
        <asp:BoundField DataField="lastdate" DataFormatString="{0:d}" 
            HeaderText="lastdate" SortExpression="lastdate" />
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
       </strong></h1></div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
    
        SelectCommand="SELECT [class], [subject], [qns], [description], [lastdate] FROM [assignments] WHERE class in (select class from students where admnno=@admn )">
    <SelectParameters>
        <asp:SessionParameter Name="admn" SessionField="username" />
    </SelectParameters>
</asp:SqlDataSource>
</form>
</asp:Content>

