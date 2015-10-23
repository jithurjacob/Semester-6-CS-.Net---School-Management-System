<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_master.master" AutoEventWireup="true" CodeFile="submit assgn.aspx.cs" Inherits="student_submit_assgn" %>

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
        table tbody tr td {
        border:0px;
         border-left:0px;
         border-right:0px;
        }
      .style3
    {
        width: 47px;
    }
    .style4
    {
        width: 118px;
    }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> SUBMIT ASSIGNMENT</strong></h1></div>
    <table class="style1">
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                TOPIC</td>
            <td width="40">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="qns" DataValueField="id" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT [id], [class], [subject], [qns], [description], [lastdate] FROM [assignments] WHERE class in (select class from students where admnno=@admn ) and   (lastdate &gt; { fn NOW() })">
                    <SelectParameters>
                        <asp:SessionParameter Name="admn" SessionField="username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                SUBJECT</td>
            <td width="40">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                DESCRIPTION</td>
            <td width="40">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                LAST DATE</td>
            <td width="40">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                TEACHER</td>
            <td width="40">
                <asp:Label ID="Label4" runat="server"></asp:Label>
             </td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                </td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                SELECT FILE</td>
            <td width="40">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                </td>
            <td width="40">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                </td>
            <td width="40">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                </td>
            <td width="40">
                <asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
                    Text="SUBMIT" />
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        </table>
        </form>
</asp:Content>

