<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NEWADMSSN.aspx.cs" Inherits="NEWADMSSN" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 3px;
        }
        .style2
        {
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
            color: #000080;
        }
        .style3
        {
            font-size: large;
            color: #666666;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style2">
            NEW ADMISSION</div>
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
                <td class="style3" width="40">
                    REGISTER NO:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
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
                    <asp:Button ID="Button1" runat="server" 
                        style="color: #800080; font-size: x-large; font-weight: 700" Text="SUBMIT" 
                        Width="105px" />
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
    </form>
</body>
</html>
