<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher_master.master" AutoEventWireup="true" CodeFile="change_password.aspx.cs" Inherits="teacher_change_password" %>

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
        .auto-style1 {
            width: 100%;
            border:0px;
            border-width:0px;
            border-style:none;
        }
        .auto-style2 { border:0px;}
        .auto-style3 { border:0px;
            width: 20%;
        }
        .auto-style4 { border:0px;
        }
        .auto-style5 { border:0px;
            width: 30%;
        }
        .auto-style6 { border:0px;
            width: 20%;
        }
        table , tr , td {
        border:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> CHANGE PASSWORD</strong></h1></div>
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
                CURRENT PASSWORD</td>
            <td width="40">
              <asp:TextBox TextMode="Password" ID="TextBox1" runat="server" CssClass="inputtext"></asp:TextBox>
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                NEW PASSWORD</td>
            <td width="40">
              <asp:TextBox TextMode="Password" ID="TextBox2" runat="server" CssClass="inputtext"></asp:TextBox>
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
          <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                CONFIRM PASSWORD</td>
            <td width="40">
              <asp:TextBox TextMode="Password" ID="TextBox3" runat="server" CssClass="inputtext"></asp:TextBox>
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" CssClass="btn" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        <//table>
        </form>
</asp:Content>

