<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="viewslotspage.aspx.cs" Inherits="carparkproject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
     <asp:SqlDataSource ID="SqlDataSourceslots" runat="server" 
        ConnectionString="<%$ ConnectionStrings:parkconnection %>" 
        SelectCommand="SELECT * FROM parking WHERE status= 'empty'">
    </asp:SqlDataSource>

    <asp:GridView ID="GridViewslots" runat="server"  
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceslots">
        <HeaderStyle BackColor="#33CC33" Font-Bold="True" Font-Italic="True" />
        <RowStyle BackColor="#CC00FF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300" />
        <Columns>
            <asp:BoundField DataField="parkslot" HeaderText="parkslot" SortExpression="parkslot">
               
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="status">
            </asp:BoundField>
        </Columns>
        <HeaderStyle Font-Bold="True" />
    </asp:GridView>
&nbsp;
</asp:Content>
