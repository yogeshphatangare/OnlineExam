<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%; margin-bottom: 5px;">
        <tr>
            <td class="auto-style1">EXAM TYPE:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Arithmetic Aptitude</asp:ListItem>
                    <asp:ListItem>Verbal Ability</asp:ListItem>
                    <asp:ListItem>Logical Reasoning</asp:ListItem>
                    <asp:ListItem>Technical Questions</asp:ListItem>
                    <asp:ListItem>General Knowledge</asp:ListItem>
                    <asp:ListItem>Current Affairs</asp:ListItem>
                    <asp:ListItem>Verbal Reasoning</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        
        
        <tr>
            <td class="auto-style1">
                &nbsp;
            
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
    <br />
</asp:Content>

