<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="selectslotpage.aspx.cs" Inherits="carparkproject.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            color: #FFFFFF;
        }
        .newStyle2 {
            color: #0000FF;
        }
        .newStyle3 {
            color: #00FFFF;
        }
        .newStyle4 {
            color: #00FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>

    

    <p>
        &nbsp;<strong> </strong></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" PostBackUrl="~/custhome.aspx" Text="CUSTOMER HOME" />
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> SELECT SLOT&nbsp;</strong></p>
    <p>
        <strong> 
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="WELCOME: "></asp:Label>
        </strong></p>

    <asp:GridView ID="GridView1" runat="server" 
             DataSourceID ="selectslot" 
             AutoGenerateColumns = "False" >
             <HeaderStyle BackColor="#33CC33" Font-Bold="True" Font-Italic="True" />
        <RowStyle BackColor="#CC00FF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300" />
            <Columns>
                <asp:BoundField DataField = "parkslot" HeaderText = "parkslot" />
                <asp:BoundField DataField = "status" HeaderText = "status"/>
                     
            </Columns>
            <HeaderStyle Font-Bold="True" />
        </asp:GridView>
 
       
        <asp:SqlDataSource ID="selectslot" runat="server"
             
              ConnectionString = "<%$ ConnectionStrings:parkconnection %>" 
              SelectCommand = "SELECT * FROM parking WHERE status= 'empty'">
    </asp:SqlDataSource>

    <p>
        &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle3"> SELECT DATE:&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle1">&nbsp;&nbsp; </span><span class="newStyle4">SELECT SLOT:</span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Calendar ID="Calendar1" runat="server" TodayDayStyle-BackColor="Yellow"
         TodayDayStyle-ForeColor="Red"
         TodayDayStyle-Font-Bold="true"></asp:Calendar>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
    <p>
        <strong>&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="UPDATE PARKING TABLE" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="check1"></asp:Label>
        </strong>
</p>
    <p>
        &nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="UPDATE CUSTOMER TABLE" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="check2"></asp:Label>
</p>
    <p>
        &nbsp;</p>

    

    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
