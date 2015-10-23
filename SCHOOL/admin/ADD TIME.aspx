<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADD TIME.aspx.cs" Inherits="ADD_TIME" MasterPageFile="~/admin/admin_master.master" %>

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
            font-weight: bold;
             font-size: medium;
          color: #666666;
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
             <h1 class="style3 title" style="font-size:20px"><strong>ADD TIMETABLE</strong></h1></div>
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
                    CLASS:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="107px" 
                        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CLASS" 
                        DataValueField="Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                        SelectCommand="SELECT Id, std + div AS CLASS FROM classes"></asp:SqlDataSource>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    DAY:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="108px">
                        <asp:ListItem>MONDAY</asp:ListItem>
                        <asp:ListItem>TUESDAY</asp:ListItem>
                        <asp:ListItem>WEDNESDAY</asp:ListItem>
                        <asp:ListItem>THURSDAY</asp:ListItem>
                        <asp:ListItem>FRIDAY</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    PERIOD:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="107px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    SUBJECT:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList5" runat="server" Width="106px" 
                        DataSourceID="SqlDataSource3" DataTextField="subject" DataValueField="subject">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" SelectCommand="SELECT * FROM [subjects]"></asp:SqlDataSource>
                </td>
                <td width="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style4" width="40">
                    TEACHER:</td>
                <td width="40">
                    <asp:DropDownList ID="DropDownList6" runat="server" Width="106px" DataSourceID="SqlDataSource4" DataTextField="username" DataValueField="username">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" SelectCommand="SELECT * FROM [teachers]"></asp:SqlDataSource>
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
                    style="color: #fff; font-size: large; font-weight: 700" Text="SUBMIT" OnClick="Button1_Click" 
                         />
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
    
    </div>
    </form>
</asp:Content>
