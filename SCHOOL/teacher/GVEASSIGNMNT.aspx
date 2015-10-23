<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GVEASSIGNMNT.aspx.cs" Inherits="GVEASSIGNMNT" MasterPageFile="~/teacher/teacher_master.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style1
        {
            height: 89px;
        }
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
        #form1    table tbody tr td {
        border:0px;
         border-left:0px;
         border-right:0px;
        }
       #form1  table ,tbody ,tr, td {
        border:0px;
         border-left:0px;
         border-right:0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <div class="style1">
    
        <h1 class="style3 title" style="font-size:20px"><strong>GIVE ASSIGNMENT</strong></h1></div>
    <table class="style2">
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
            <td width="10" class="style1">
                </td>
            <td class="style3" width="40">
                CLASS</td>
            <td width="40" class="style1">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="96px" 
                    DataSourceID="SqlDataSource1" DataTextField="CLASS" DataValueField="Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT Id, std + div AS CLASS FROM classes">
                </asp:SqlDataSource>
            </td>
            <td width="10" class="style1">
                </td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style3" width="40">
                TOPIC</td>
            <td width="40">
                <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style3" width="40">
                SUBJECT</td>
            <td width="40">
                
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="subject" 
                    DataValueField="subject">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT * FROM [subjects]"></asp:SqlDataSource>
                
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style3" width="40">
                DESCRIPTION</td>
            <td width="40">
                <asp:TextBox ID="TextBox40" runat="server" Height="62px" TextMode="MultiLine" 
                    Width="124px"></asp:TextBox>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style3" width="40">
                LAST DATE</td>
            <td width="40">
                
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White"  
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#000" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC"  ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"  />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style3" width="40">
                &nbsp;</td>
            <td width="40">
                <asp:Button ID="Button2" runat="server" 
                    style="color: #FFF; font-size:large; font-weight: 700" Text="SUBMIT" 
                     CssClass="btn" onclick="Button2_Click" />
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

    
