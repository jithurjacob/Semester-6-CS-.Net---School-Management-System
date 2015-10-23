<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher_master.master" AutoEventWireup="true" CodeFile="view submns.aspx.cs" Inherits="teacher_view_submns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {border:0px;
         border-left:0px;
         border-right:0px;
            width: 100%;
            border-style: solid;
            border-width: 0px;
        }
        .style2
        {border:0px;
         border-left:0px;
         border-right:0px;
            text-align: left;
             font-size: medium;
          color: #666666;
            font-weight: bold;
        }
        .style4
        {border:0px;
         border-left:0px;
         border-right:0px;
             font-size: medium;
          color: #666666;
            font-weight: bold;
        }
        table tbody tr td {
        border:0px;
         border-left:0px;
         border-right:0px;
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> VIEW SUBMISSIONS</strong></h1></div>

     <table class="style1">
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                TOPIC</td>
            <td width="40">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="qns" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT * FROM [assignments]"></asp:SqlDataSource>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="admno" HeaderText="admno" SortExpression="admno" />
                        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                        <asp:BoundField DataField="assignno" HeaderText="assignno" 
                            SortExpression="assignno" />
                        <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="date" 
                            SortExpression="date" />
                        <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" 
                            Visible="False" />
                        <asp:HyperLinkField DataNavigateUrlFields="path" 
                            DataNavigateUrlFormatString="{0}" DataTextField="path" HeaderText="path" 
                            NavigateUrl="path" SortExpression="path" Target="_blank" Text="{0}" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT * FROM [submissions] WHERE ([assignno] = @assignno)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="assignno" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
             </td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                </td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
           <td class="style4" width="40">
                </td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                </td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</asp:Content>

