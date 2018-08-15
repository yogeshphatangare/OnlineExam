<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Student_Profile.aspx.cs" Inherits="Student_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Site.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="profile">

    <table style="width: 100%;">
       <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
               <asp:Label ID="Namel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email-ID"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Emaill" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Mobilel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Exam Attends"></asp:Label>
            </td>
            <td>
                <asp:Label ID="ExamAttendLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Overall Rank"></asp:Label>
            </td>
            <td>
                <asp:Label ID="OverallRankLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Highest Score"></asp:Label>
            </td>
            <td>
                <asp:Label ID="HighestScoreLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Last Attended Exam"></asp:Label>
            </td>
            <td>
                <asp:Label ID="LastExamLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table></div>
</asp:Content>

