<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="carparkproject.WebForm1" Theme="mytheme"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <center>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" fontsize="x-large" runat="server" ForeColor="green" Height="36px" style="font-weight: 700" Text="About Skyline Parking" Width="270px"></asp:Label>
         <br />
        <br />
    </center>


   <center> <asp:Label ID="Label2" runat="server" Text="Headquartered in Winterthur Switzerland, Skyline Parking AG focuses on delivering state-of-the-art Automated Parking Systems throughout the greater European area. Built upon patented technologies and a commitment to meeting customer needs, our goal is to exceed expectations in the critical areas of reliability, performance, user satisfaction and economics.   Skyline employees orient themselves on the three corporate values of
innovation, value creation and sustainability." ForeColor="green"></asp:Label> </center>

</asp:Content>
