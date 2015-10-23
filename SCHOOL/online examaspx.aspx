<%@ Page Language="C#" AutoEventWireup="true" CodeFile="online examaspx.aspx.cs" Inherits="online_examaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
            color: #000080;
        }
        .style2
        {
            width: 100%;
            height: 0;
        }
        .style3
        {
            width: 15px;
        }
        .style4
        {
            font-size: large;
            color: #666666;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p class="style1">
&nbsp;ADD QUESTIONS</p>
    <table class="style2">
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                QUESTION</td>
            <td colspan="4">
                <asp:TextBox ID="TextBox38" runat="server" TextMode="MultiLine" Width="791px"></asp:TextBox>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                CHOICES</td>
            <td class="style3">
                <asp:TextBox ID="TextBox35" runat="server" Width="148px"></asp:TextBox>
            </td>
            <td width="40">
                <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
            </td>
            <td width="40">
                <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
            </td>
            <td width="40">
                <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td width="40">
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
            <td class="style3">
                &nbsp;</td>
            <td width="40">
                <asp:Button ID="Button1" runat="server" Height="32px" 
                    style="font-weight: 700; color: #800080; font-size: x-large" Text="SUBMIT" 
                    Width="100px" />
            </td>
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
            <td class="style3">
                &nbsp;</td>
            <td width="40">
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
</body>
</html>
