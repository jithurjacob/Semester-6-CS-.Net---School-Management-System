<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher_master.master" AutoEventWireup="true" CodeFile="add marks.aspx.cs" Inherits="teacher_add_marks" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="style2">
    
   <h1 class="style3 title" style="font-size:20px"><strong> ADD MARKS</strong></h1></div>
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
            <td width="10" class="style5">
                </td>
           <td class="style4" width="40">
                CLASS</td>
            <td width="40" class="style5">

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="STD" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT STD+DIV AS STD,ID FROM CLASSES"></asp:SqlDataSource>

                </td>
            <td width="10" class="style5">
                </td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td class="style4" width="40">
                NAME</td>
            <td width="40">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="admnno">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:schoolConnectionString %>" 
                    SelectCommand="SELECT * FROM [students] WHERE ([class] = @class)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="class" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td width="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="10" class="style5">
                </td>
           <td class="style4" width="40">
                EXAM</td>
            <td width="40" class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>UNIT TEST 1</asp:ListItem>
                    <asp:ListItem>UNIT TEST 2</asp:ListItem>
                    <asp:ListItem>UNIT TEST 3</asp:ListItem>
                    <asp:ListItem>TERM TEST 1</asp:ListItem>
                    <asp:ListItem>TERM TEST 2</asp:ListItem>
                    <asp:ListItem>ANNUAL EXAM</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td width="10" class="style5">
                </td>
        </tr>
          <tr>
            <td width="10" class="style5">
                </td>
            <td class="style4" width="40">
                MARKS</td>
            <td width="40" class="style5">

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                </td>
            <td width="10" class="style5">
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="INVALID MARK" MaximumValue="100" 
                    MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
        </tr>
          <tr>
            <td width="10" class="style5">
                </td>
            <td width="40" class="style5">
                </td>
            <td width="40" class="style5">
                </td>
            <td width="10" class="style5">
                </td>
        </tr>
          <tr>
            <td width="10" class="style5">
                </td>
            <td width="40" class="style5">
                </td>
            <td width="40" class="style5">
                </td>
            <td width="10" class="style5">
                </td>
        </tr>
        <tr>
            <td width="10">
                &nbsp;</td>
            <td width="40">
                &nbsp;</td>
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

