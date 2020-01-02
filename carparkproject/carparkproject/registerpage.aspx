<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="registerpage.aspx.cs" Inherits="carparkproject.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
&nbsp; 
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <strong>&nbsp; CID: </strong>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </p>

    <p>
&nbsp; <strong>NAME:</strong>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

&nbsp;</p>
    <p>
&nbsp; <strong>PASSWORD:</strong>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
 
    </p>
    <p>
        &nbsp; <strong>CARD LOST:&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </strong>
    </p>
    <p>
        <asp:Label ID="LabelError" runat="server" Text="check"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button6" runat="server" Text="REGISTER" OnClick="Button6_Click" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
