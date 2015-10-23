<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD CLASS DIV.aspx.cs" Inherits="ADD_CLASS_DIV" MasterPageFile="~/admin/admin_master.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
        .style2
        {
            width: 100%;
            border-style: solid;
            border-width: 0px;
            margin-top: 30px;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            font-size: xx-large;
            font-weight: bold;
            color: #333399;
        }
        .style6
        {
            height: 21px;
            text-align: right;
            color: #660033;
            font-weight: bold;
            font-size: large;
        }
        .style7
        {
            color: #660033;
            font-weight: bold;
            font-size: large;
        }

       #form1 {
       margin-top:50px;
       }
    </style>

    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    


    <form id="form1" runat="server">
    <div>
    
        <div class="style3">
            <span class="style5">ADD CLASS &amp; DIVISION</span><table class="style2">
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
                    <td class="style4" width="10">
                    </td>
                    <td class="style6" width="40">
                        CLASS NAME</td>
                    <td class="style4" width="40">
                        <asp:DropDownList ID="class" runat="server" Height="27px" 
                            onselectedindexchanged="class_SelectedIndexChanged" style="margin-left: 0px" 
                            Width="128px">
                            <asp:ListItem>VIII</asp:ListItem>
                            <asp:ListItem>IX</asp:ListItem>
                            <asp:ListItem>X</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style4" width="10">
                    </td>
                </tr>
                <tr>
                    <td width="10">
                        &nbsp;</td>
                    <td class="style7" style="text-align: right" width="40">
                        ADD DIVISION</td>
                    <td width="40">
                        <asp:TextBox ID="division" runat="server"></asp:TextBox>
                    </td>
                    <td width="10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="10">
                        &nbsp;</td>
                    <td style="text-align: right" width="40">
                        <asp:Button ID="Button1" runat="server" 
                            style="font-size: large; font-weight: 700; text-align: right; position: relative; top: 0px; color: #800080" 
                            Text="SUBMIT" />
                    </td>
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
                        &nbsp;</td>
                    <td width="10">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
 </asp:Content>

