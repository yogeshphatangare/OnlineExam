<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add_Queadd.aspx.cs" Inherits="Add_Queadd" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            width: 957px;
        }
        .auto-style3 {
            width: 95px;
        }
        #Text2 {
            width: 21px;
        }
        .auto-style4 {
            width: 7px;
        }
        .auto-style5 {
            width: 244px;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style7 {
            width: 244px;
            height: 35px;
        }
        </style>
    <link href="Styles/AdminLog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div clas="que">
         <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Question No." ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="Question" runat="server" Height="59px" TextMode="MultiLine" Width="807px"></asp:TextBox>
                </td>
            </tr>
            </table>
        <br/>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Arithmetic Aptitude</asp:ListItem>
                        <asp:ListItem>Verbal Ability</asp:ListItem>
                        <asp:ListItem>Logical Reasoning</asp:ListItem>
                        <asp:ListItem>General Knowledge</asp:ListItem>
                        <asp:ListItem>Technical Questions</asp:ListItem>
                        <asp:ListItem>Current Affairs</asp:ListItem>
                        <asp:ListItem>Verbal Reasoning</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="A" ForeColor="White" TabIndex="3"></asp:Label>
                    <asp:TextBox ID="A" runat="server" EnableTheming="False"  ></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="B" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="B" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="C" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="C" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="D" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="D" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="CorrectOption" ForeColor="White" ></asp:Label>
                    <asp:TextBox ID="correctopt" runat="server" style="margin-left: 12px" placeholder="Option"></asp:TextBox>
                </td>
                
            </tr>
        </table>
      </div>
    <br />
    <br />
    <br />
    <div class="submit">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ForeColor="Black" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" ForeColor="Black" />

    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </asp:Content>

