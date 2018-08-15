<%@ Page Title="" Language="C#" MasterPageFile="~/LiveExam.master" AutoEventWireup="true" CodeFile="LiveTestExam.aspx.cs" Inherits="LiveTestExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/liveexam.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/img/ssss.jpg" width="100%" Height="100%">
        
            
          <asp:Table ID="Table1" runat="server">
              <asp:TableRow>
                  
                 
                 
                  <asp:TableCell Width="90%">
                       
                      <asp:Label ID="Label2" runat="server" Text="Question no"></asp:Label>
                  </asp:TableCell>
              </asp:TableRow>
              </asp:Table>
            <asp:Table runat="server">
             
              <asp:TableRow ID="radiobutton">
                   
                 <asp:TableCell>

                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Vertical" Width="100%">
                    <asp:ListItem Text="" Value="A"></asp:ListItem>
                    <asp:ListItem Text="" Value="B"></asp:ListItem>
                    <asp:ListItem Text="" Value="C"></asp:ListItem>
                    <asp:ListItem Text="" Value="D"></asp:ListItem>
                </asp:RadioButtonList>
                 </asp:TableCell>
                </asp:TableRow>
                </asp:Table>
                    <asp:Table runat="server">

              <asp:TableFooterRow>
                  <asp:TableCell>
                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
                  </asp:TableCell>
                  <asp:TableCell>
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" />
                  </asp:TableCell>
              </asp:TableFooterRow>

          </asp:Table>



      
            

            
    </asp:Panel>
</asp:Content>

