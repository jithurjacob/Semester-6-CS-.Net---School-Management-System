<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.master" AutoEventWireup="true" CodeFile="VIEW CANDIDATES.aspx.cs" Inherits="VIEW_CANDIDATES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>

    #container table  a{
          <%-- background-color:#006699;--%>

       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanging="GridView1_SelectedIndexChanging" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing">
            <Columns>
                <asp:CommandField CausesValidation="False" EditText="REJECT" 
                    ShowCancelButton="False" ShowEditButton="True" />
                <asp:CommandField SelectText="ADMIT TO VIII A" ShowSelectButton="True" 
                    HeaderText="ADMIT TO VIII A" />
                <asp:CommandField DeleteText="ADMIT TO VIII B" HeaderText="ADMIT TO VIII B" 
                    SelectText="ADMIT TO VIII B" ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="guardian_name" HeaderText="guardian_name" 
                    SortExpression="guardian_name" />
                <asp:BoundField DataField="guardian_email" HeaderText="guardian_email" 
                    SortExpression="guardian_email" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" 
                    DataFormatString="{0:d}" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                    SortExpression="phoneno" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
            SelectCommand="SELECT * FROM [candidates]" DeleteCommand="delete from candidates where id=@id" 
            >
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" 
                    PropertyName="SelectedValue" />
            </DeleteParameters>
            
        </asp:SqlDataSource>
    </form>
</asp:Content>

