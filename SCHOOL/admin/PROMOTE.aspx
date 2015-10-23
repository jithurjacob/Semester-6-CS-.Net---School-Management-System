<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PROMOTE.aspx.cs" Inherits="PROMOFT"  MasterPageFile="~/admin/admin_master.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 0px;
        }
        .style3
        {
            text-align: center;
            font-size: medium;
            color: #666666;
            font-weight: bold;
        }
        .style4
        {
            font-size: medium;
            color: #666666;
            font-weight: bold;
            text-align: left;
        }
         table tbody tr td {
        border:0px;
         border-left:0px;
         border-right:0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <div>
    
        <div class="style3">
            <h1 class="style3 title" style="font-size:20px"><strong>PROMOTE STUDENT</strong></h1></div>
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
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    CLASS</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="128px" 
                        DataSourceID="SqlDataSource1" DataTextField="CLASS" DataValueField="Id">
                        <asp:ListItem>VIII</asp:ListItem>
                        <asp:ListItem>IX</asp:ListItem>
                        <asp:ListItem>X</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SCHOOLConnectionString2 %>" 
                        SelectCommand="SELECT Id, std + div AS CLASS FROM classes">
                    </asp:SqlDataSource>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    FAILED</td>
                <td width="40">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    &nbsp;</td>
                <td width="40">
                    <asp:Button ID="Button1" CssClass="btn" runat="server" 
                    style="color: #fff; font-size: x-large; font-weight: 700" Text="SUBMIT" onclick="Button1_Click" 
                         />
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10" colspan="4">PROVIDE ADMNNO OF FAILED STUDENTS SEPARATED BY COMMA
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</asp:Content>
