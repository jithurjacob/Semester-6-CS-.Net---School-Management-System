<%@ Page Title="" Language="C#" MasterPageFile="~/parent/parent_master.master" AutoEventWireup="true" CodeFile="view attend.aspx.cs" Inherits="parent_view_attend" %>

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
      .style5
      {
          height: 31px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> VIEW ATTENDANCE</strong></h1></div>
    <table class="style1">
        <tr>
            <td width="10">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10" class="style5">
                </td>
           <td class="style4" width="40">
                CLASS</td>
            <td width="40" class="style5">

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="STD" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT STD+DIV AS STD,ID FROM CLASSES"></asp:SqlDataSource>

                </td>
            <td width="10" class="style5">
                </td>
        </tr>

        <tr>
            <td width="10" class="style5">
                </td>
           <td class="style4" width="40">
                TERM</td>
            <td width="40" class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    
                    <asp:ListItem>TERM TEST 1</asp:ListItem>
                    <asp:ListItem>TERM TEST 2</asp:ListItem>
                 
                </asp:DropDownList>
                </td>
            <td width="10" class="style5">
                </td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" 
                    AllowPaging="True" AllowSorting="True" ondatabound="GridView1_DataBound">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="admnno" HeaderText="admnno" 
                            SortExpression="admnno" />
                        <asp:BoundField DataField="term" HeaderText="term" SortExpression="term" />
                        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                        <asp:BoundField DataField="attendance" HeaderText="attendance" SortExpression="attendance" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT * FROM [attend] WHERE (([class] = @class) AND ([term] = @term))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="class" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="term" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
             </td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>

        </table>
        
        </form>
</asp:Content>

