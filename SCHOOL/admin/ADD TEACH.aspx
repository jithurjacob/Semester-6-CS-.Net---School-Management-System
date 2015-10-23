<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD TEACH.aspx.cs" Inherits="ADD_TEACH"  MasterPageFile="~/admin/admin_master.master" %>

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
             font-size: medium;
          color: #666666;
            font-weight: bold;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 10px;
        }
        .style5
        {
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

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <div>
    
        <div class="style3">
            <span class="style2"> <h1 class="style3 title" style="font-size:20px"><strong>ADD TEACHER</strong></h1></span><br />
        </div>
        <table class="style1">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" width="40">
                    NAME:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" width="40">
                    EMAIL:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter proper email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" width="40">
                    USERNAME:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" width="40">
                    PASSWORD:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5" width="40">
                    CONFIRM PASSWORD:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td width="40">
                    &nbsp;</td>
                <td width="40">
                    <asp:Button ID="Button1" CssClass="btn" runat="server" 
                    style="color: #fff; font-size: large; font-weight: 700" Text="SUBMIT" OnClick="Button1_Click" />
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td width="40">
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
 </asp:Content>
