<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Styles/Site.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <div style="font-family:Arial;" class="allblur">
        
            <p style="color:blue;font-family:Verdana;font-size:large">Contact Us :</p><br />
            <table style="color: #000000">
                <tr>
                    <td style="vertical-align:top">
                        Name:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tName" Width="200px" runat="server" CssClass="tb"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Name is Required !"
                            ControlToValidate="tName" 
                            Text="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #000000;vertical-align:top">
                        Email:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tEmail" Width="200px" runat="server" CssClass="tb"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ErrorMessage="Email is Required !"
                         ControlToValidate="tEmail" Text="*" ForeColor="Red" Display="Dynamic"  ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Please Enter Valid Email !" 
                            Text="*" Display="Dynamic" 
                            ForeColor="Red" ControlToValidate="tEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>


                </tr>
                <tr>
                    <td style="vertical-align:top">
                        Subject:
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tSubject" Width="200px" runat="server" Rows="5" CssClass="tb"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ErrorMessage="Sunject is Requires !"
                         ControlToValidate="tSubject" 
                         Text="*"
                         ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:top">
                        Comment:
                    </td>
                    <td style="vertical-align:top" colspan="2">
                        <asp:TextBox ID="tComment" Width="210px" TextMode="MultiLine" runat="server" CssClass="tb" Rows="5" EnableTheming="True"></asp:TextBox>
                    </td>
                    
                    <td style="vertical-align:top" class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ErrorMessage="Comment is Requires !"
                         ControlToValidate="tComment" 
                         Text="*" 
                         ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="padding-left:15px">
                        <asp:ValidationSummary ID="ValidationSummary1" 
                            HeaderText="Please Fix Following Errors !" 
                            ForeColor="Red" runat="server" />

                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="33px" style="font-weight: 700" Width="166px" />

                    </td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
          </div>
</asp:Content>
