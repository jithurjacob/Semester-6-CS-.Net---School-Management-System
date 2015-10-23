<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam schedule.aspx.cs" Inherits="examschedule"  MasterPageFile="~/admin/admin_master.master" %>


<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>


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
    
   <h1 class="style3 title" style="font-size:20px"><strong> EXAM</strong></h1></div>
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
                REGISTRATION START DATE</td>
            <td width="40">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px" SelectedDate="03/16/2014 09:47:38">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td width="10">
               
            </td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                REGISTRATION END DATE</td>
            <td width="40">
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td width="10">
               
            </td>
        </tr>
         <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                EXAM DATE</td>
            <td width="40">
                <asp:Calendar ID="Calendar3" runat="server" BackColor="White" 
                    BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                    Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td width="10">
               
            </td>
        </tr> <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                EXAM START TIME</td>
            <td width="40">
                <MKB:TimeSelector ID="TimeSelector1" runat="server" DisplaySeconds="False" 
                    SelectedTimeFormat="TwentyFour">
                </MKB:TimeSelector>
            </td>
            <td width="10">
               
            </td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                EXAM END TIME</td>
            <td width="40">
                <MKB:TimeSelector ID="TimeSelector2" runat="server" DisplaySeconds="False" 
                    SelectedTimeFormat="TwentyFour">
                </MKB:TimeSelector>
            </td>
            <td width="10">
               
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
                <asp:ScriptManager ID="ScriptManager1" runat="server" 
                    EnableScriptGlobalization="True">
                </asp:ScriptManager>
            </td>
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
