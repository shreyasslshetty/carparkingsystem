<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="custhome.aspx.cs" Inherits="carparkproject.WebForm4" Theme="mytheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <p>
          <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="WELCOME: "></asp:Label>
</p>
      <p>
          &nbsp;</p>
      <p>
    <br />
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" Text="Select Slot" PostBackUrl="~/selectslotpage.aspx" OnClick="Button5_Click" />
    &nbsp;
    <asp:Button ID="Button6" runat="server" Text="Card Lost Complain" PostBackUrl="~/cardlostcomplainpage.aspx" />
&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Change Password" PostBackUrl="~/changepasswordpage.aspx" />
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>
    &nbsp;</p>

</asp:Content>
