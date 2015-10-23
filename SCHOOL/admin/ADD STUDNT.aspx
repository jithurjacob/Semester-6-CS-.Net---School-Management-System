<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD STUDNT.aspx.cs" Inherits="ADD_STUDNT" MasterPageFile="~/admin/admin_master.master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 0px;
        }
        .style2
        {
            height: 23px;
            border:0px;
        }
        .style3
        {
            font-size: large;
            color: #666666;
            border:0px;
        }
        .style4
        {
            font-size: large;
           color: #666666;
            font-weight: bold;
            border:0px;
        }
        .style5
        {
            border:0px;
            text-align: center;
        }
        .style6
        {border:0px;
            height: 23px;
            font-weight: bold;
            font-size: medium;
           color: #666666;
        }
        .style7
        {border:0px;
         border-left:0px;
         border-right:0px;
            font-weight: bold;
            font-size: medium;
          color: #666666;
        }
        td {
            border:0px;
         border-left:0px;
         border-right:0px;
        }
        table {
        color: #666666;
        }
    </style>
  
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <div>
    
        <div class="style5">
            <h1 class="style3 title" style="font-size:20px"><strong>ADD STUDENT</strong></h1></div>
        <table class="style1" border="0">
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
                <td class="style2" width="10">
                </td>
                <td class="style6" width="40">
                    ADMISSION NO:</td>
                <td class="style2" width="40">
                    <asp:TextBox  ID="TextBox2" runat="server"></asp:TextBox>
                   
                </td>
                <td class="style2" width="10">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ony number is allowed" ControlToValidate="TextBox2" ValidationExpression="\d{1,6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    NAME:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    PASSWORD:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox4" runat="server">password</asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    CLASS:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CLASS" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SCHOOLConnectionString2 %>" 
                        SelectCommand="SELECT Id, std + div AS CLASS FROM classes"></asp:SqlDataSource>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    &nbsp;</td>
                <td width="40">
                    <asp:Button ID="Button1" runat="server" 
                        style="color: #fff; font-size: x-large; font-weight: 700" Text="SUBMIT" OnClick="Button1_Click" CssClass="btn" />
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    &nbsp;</td>
                <td width="40">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <style>
        table tbody td {
            border: 0px;
            border-left: 0px;
            border-right: 0px;
        }
    </style>
    </asp:Content>

