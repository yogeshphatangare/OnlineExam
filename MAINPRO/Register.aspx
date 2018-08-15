<%@ Page Title="" Language="C#" MasterPageFile="~/Firstmaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 82%;">
    <tr>
        <td>
    <asp:Label ID="LblUserName0" runat="server" Text="User Name"></asp:Label>
        </td>
        <td>
    <asp:TextBox ID="txtUserName" runat="server"  Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:Label ID="ExistLabel" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label ID="txtPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
    <asp:TextBox ID="textpass" runat="server"  Width="160px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textpass" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label ID="LblConfirmPassword1" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
    <asp:TextBox ID="txtConfirmPass" runat="server"  Width="160px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="textpass" ControlToValidate="txtConfirmPass" ErrorMessage="Passwords  don't match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Name</td>
        <td class="auto-style1">
    <asp:TextBox ID="txtName" runat="server"  Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="MobileLabel0" runat="server" Text="Mobile No."></asp:Label>
        </td>
        <td class="auto-style1">
    <asp:TextBox ID="txtMobile" runat="server"  Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMobile" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            Gender</td>
        <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="EmailLabel" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
    <asp:TextBox ID="txtEmail" runat="server"  Width="160px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="BtnSave0" runat="server" Text="Save" Width="70px" OnClick="BtnSave0_Click" />
        </td>
        <td>
        <asp:Button ID="BtnClear0" runat="server" Text="Back" Width="62px" OnClick="BtnClear0_Click" ValidationGroup="null" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

