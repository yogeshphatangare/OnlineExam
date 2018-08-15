<%@ Page Title="" Language="C#" MasterPageFile="~/Firstmaster.master" AutoEventWireup="true" CodeFile="First_Login.aspx.cs" Inherits="First_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/User.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <table class="UserLogin">
       
        <tr>
            <td >
                <asp:TextBox ID="Username" runat="server" CssClass="tb" placeholder="USERNAME" Width="189px"></asp:TextBox>
            </td>
            
        </tr>
        <tr >
            <td>
                <asp:TextBox ID="Password" runat="server" CssClass="tb" placeholder="PASSWORD" TextMode="Password" Width="189px"></asp:TextBox>
            </td>
               
        </tr>
        <tr >
            <th>
                <asp:Button ID="loginBtnClick" runat="server" CssClass="button" Height="36px"  Text="Sign In" Width="203px" OnClick="loginBtnClick_Click"/>
            </th>
        </tr>
        <tr>
            <th>---------OR-------</th>
           
        </tr>
        <tr >
            <th>
                <asp:Button ID="registerClick" runat="server" CssClass="button2" Height="36" Text="Create New Account" Width="203px" OnClick="registerClick_Click"  />
            </th>
        </tr>
    </table>
                 <h1 align="center"><font color="red"><b><asp:Label ID="labelMsg" runat="server"></asp:Label></b></font></h1>
</asp:Content>

