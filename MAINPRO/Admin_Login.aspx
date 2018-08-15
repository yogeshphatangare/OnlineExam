<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 63px;
        }
        .auto-style3 {
            width: 63px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
   <link href="Styles/AdminLog.css" rel="stylesheet" />
</head>
<body style="height: 100px; width: 1182px">
    <form id="form1" runat="server">
    <div class="AdminLog">
        <img src="img/Admin.png" />

        <table style="width: 1177px; height: 100px;">
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="admini" runat="server" placeholder="Enter AdminId"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="passi" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="LogIn" OnClick="Button2_Click1" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <a href="Default.aspx">Forget Password?</a></td>
            </tr>
        </table>
     </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
