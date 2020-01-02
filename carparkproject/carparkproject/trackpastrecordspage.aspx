<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="trackpastrecordspage.aspx.cs" Inherits="carparkproject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            color: #00FFFF;
        }
        .newStyle2 {
            color: #00FFFF;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        <strong class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" PostBackUrl="~/adminhome.aspx" Text="ADMIN HOME" />
        </strong></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong class="newStyle1">Track Past Records</strong></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="newStyle2">Select Date: </span>&nbsp;<asp:Calendar ID="Calendar1" runat="server" TodayDayStyle-BackColor="Yellow"
         TodayDayStyle-ForeColor="Red"
         TodayDayStyle-Font-Bold="true"></asp:Calendar>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="SELECT DATE" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
    </p>
    <p>
        <span class="newStyle4">Selected Date:
        <asp:Label ID="Label1" runat="server" Text="SELECTED DATE"></asp:Label>
        </span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="newStyle3"> <strong>Records Retrieved&nbsp;</strong></span></p>
    <p>
        &nbsp;</p>
    <p>
         <asp:GridView ID="GridView1" runat="server" 
             DataSourceID ="trackrecord" 
             AutoGenerateColumns = "False" Allowsorting="true">
             <HeaderStyle BackColor="#33CC33" Font-Bold="True" Font-Italic="True" />
        <RowStyle BackColor="#CC00FF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300" />
            <Columns>
                <asp:BoundField DataField = "CId" HeaderText = "CID" />
                <asp:BoundField DataField = "custname" HeaderText = "custname" />
                <asp:BoundField DataField = "parkdate" HeaderText = "parkdate" />
                
                <asp:BoundField DataField = "parkslot" HeaderText = "parkslot" sortexpression="parkslot"/>
                
                     
            </Columns>
            <HeaderStyle Font-Bold="True" />
        </asp:GridView>
 
       
        <asp:SqlDataSource ID="trackrecord" runat="server"
             
              ConnectionString = "<%$ ConnectionStrings:parkconnection %>" 
              SelectCommand = "SELECT * FROM customer WHERE parkdate=@parkdate ">

            <SelectParameters>
    <asp:ControlParameter Name="parkdate" 
      ControlID="Label1"
      PropertyName="Text"/>
  </SelectParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>
