<%@ Page Title="" Language="C#" MasterPageFile="~/exam/exam_master.master" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exam_exam" EnableEventValidation="false" ErrorPage="~/exam/exam.aspx"   %>

<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>

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
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="True" 
        EnablePageMethods="True" EnableScriptGlobalization="True"  >
    </asp:ScriptManager>
    
     <asp:Label ID="Label2" runat="server" class="style3 title" style="font-size:20px" ></asp:Label>
 
    <div>
    
        <div class="style5">
            <h1 class="style3 title" style="font-size:20px"><strong>EXAM</strong></h1>
            <MKB:TimeSelector ID="TimeSelector1" runat="server" EnableClock="True" 
                SelectedTimeFormat="TwentyFour">
            </MKB:TimeSelector>
        </div>
        <table class="style1" border="0">
            <tr>
                <td width="100%" colspan="4">
                    <center style="width: 258px">EXAM STARTS AT : 
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </center></td>
            </tr>
            <tr>
                <td width="100%" colspan="4">
                    <center style="width: 258px">EXAM ENDS AT   &nbsp;&nbsp;&nbsp;: 
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </center></td>
            </tr>
             <tr  >
             
                <td width="100%" colspan="4">
                <asp:Panel ClientIDMode="AutoID" ID="mark_row" runat="server" Visible="False">
                    <center style="width: 258px">MARK   &nbsp;&nbsp;&nbsp;: 
                        <asp:Label ID="mark_label" runat="server">0</asp:Label>
                    </center>
                    </asp:Panel>
                    </td>
            </tr>
            <tr id="startbtn_row" >
                <td width="100%" colspan="4">
                
                    <asp:Button ID="Button1" runat="server" Text="START EXAM" 
                        onclick="Button1_Click" Visible="False" />
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="FINISH EXAM" Visible="False" />
                    <asp:Timer ID="Timer3" runat="server" Interval="3000" ontick="Timer3_Tick">
                    </asp:Timer>
                
                </td>
                </tr>
                <tr>
                <td width="100%" colspan="4">
                <asp:Label ID="warning_Label" runat="server" Visible="False">NOTE : 1.ONCE YOU START THE EXAM IF YOU CLOSE THE BROWSER YOU WONT BE GIVEN SECOND CHANCES 2.YOU WIILL BE GIVEN MAXIMUM ONE MINUTE TO ATTEND A QUESTION 3.EACH CORRECT ANSWER HAS 10 MARKS 4.THERE WILL BE NO NEGATIVE MARKS</asp:Label>
                </td>
                </tr>
                <tr>
                <td width="100%" colspan="4">
                <asp:Label ID="finishlbl" Visible="False" runat="server">IF YOU DONOT COMPLETE THE EXAM BY CLICKING THE FINISH BUTTON YOUR MARKS WONT BE ENTERED AND YOU WONT BE GIVEN SECOND CHANCE</asp:Label>
                </td>
                </tr>
            <tr>
                <td width="100%" colspan="4">
                <asp:Timer ID="Timer2" runat="server" Interval="1000" ontick="Timer2_Tick" 
                        Enabled="False">
                            </asp:Timer>

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="Timer2" runat="server" EventName="Tick" />
                          
                       </Triggers>
                        <ContentTemplate>
                            Time Remaining: 
                            <asp:Label ID="Label1" runat="server">10</asp:Label>
                            <div>
                            <table width="100%">
                            <tr>
                            <td> <asp:Label ID="qns_lbl" runat="server"></asp:Label>
                            </td>
                            </tr>
                            <tr>
                            <td>
                            <div>
                                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="false" 
                                    GroupName="ans" Text="1" />
                                    </div>
                               <div>
                                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="false" 
                                    GroupName="ans" Text="2" />
                                    </div>
                                    <div>
                                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="false" 
                                    GroupName="ans" Text="3" CausesValidation="True" 
                                             />
                                    </div>
                                    <div>
                                <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="false" 
                                    GroupName="ans" Text="4" />
                                    </div>

                                <%--<asp:RadioButtonList ID="choices" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="choices_SelectedIndexChanged" >
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:RadioButtonList>--%>
                                <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" />
                           <asp:Label ID="Label5" runat="server">PRESSING SUBMIT BUTTON MORE THAN ONCE IS NOT ALLOWED  </asp:Label>
                            </td>
                            </tr>
                            </table>
                            </div>
                        </ContentTemplate>

                    </asp:UpdatePanel>
                
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

