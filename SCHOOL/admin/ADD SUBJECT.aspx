<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD SUBJECT.aspx.cs" Inherits="ADD_SUBJECT"  MasterPageFile="~/admin/admin_master.master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    
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

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> ADD SUBJECT</strong></h1></div>
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
                NAME</td>
            <td width="40">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td width="10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
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
            <td width="10">
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
            <td width="10">
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
    </form>
</asp:Content>
