<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Online Admission.aspx.cs" Inherits="Online_Admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 0px;
        }
        .style3
        {
            font-size: large;
            color: #666666;
            border:0px;
        }
        .style5
        {
            border:0px;
            text-align: center;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="Label2" runat="server" class="style3 title" style="font-size:20px" ></asp:Label>
 <form id="form1" runat="server">
    <div>
    
        <div class="style5">
            <h1 class="style3 title" style="font-size:20px"><strong>REGISTER</strong></h1></div>
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
                    EMAIL:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" 
                        runat="server" ErrorMessage="INVALID EMAIL ID" ControlToValidate="TextBox2" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    GUARDIAN NAME:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
                  
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                   GUARDIAN EMAIL:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox7"  runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" 
                        runat="server" ErrorMessage="INVALID EMAIL ID" ControlToValidate="TextBox7" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
           

             <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    DATE OF BIRTH:</td>
                <td width="40">
                    
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="Black" Height="180px" Width="200px" VisibleDate="2000-06-14">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" 
                            Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    
                </td>
                <td width="10">
                    
                </td>
            </tr>
             <tr>
                <td width="10" class="style8">
                    </td>
                <td class="style9" width="40">
                    GENDER:</td>
                <td width="40" class="style8">
                  
                    
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                  
                </td>
                <td width="10" class="style8">
                    
                </td>
            </tr>
             <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    ADDRESS:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox5"  runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    PHONE NUMBER:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox8"  runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator  ID="RegularExpressionValidator3" 
                        runat="server" ErrorMessage="INVALID number" ControlToValidate="TextBox8" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                    PASSWORD:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="10">
                    &nbsp;</td>
                <td class="style7" width="40">
                   CONFIRM PASSWORD:</td>
                <td width="40">
                    <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td width="10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
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
        .style8
        {
            height: 58px;
        }
        .style9
        {
            border-style: none;
            border-color: inherit;
            border-width: 0px;
            font-weight: bold;
            font-size: medium;
            color: #666666;
            height: 58px;
        }
    </style>
</asp:Content>

