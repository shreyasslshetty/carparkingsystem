<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="mainhome.aspx.cs" Inherits="carparkproject.WebForm5" Theme="mytheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
     <center>
   
         <asp:AdRotator ID="AdRotator1" runat="server" width="80%" Height="280px" BorderWidth="5" AdvertisementFile="~/ADD.xml" />
   
         </center>

</asp:Content>
