<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="displaydailyrecordspage.aspx.cs" Inherits="carparkproject.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            color: #00FFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle1"> <strong>Todays Records</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong class="newStyle1">
        <asp:Button ID="Button7" runat="server" PostBackUrl="~/adminhome.aspx" Text="ADMIN HOME" />
        </strong></p>
    <p>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="TODAYS DATE" />
&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="TODAYS DATE"></asp:Label>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:GridView ID="GridView1" runat="server" 
             DataSourceID ="todaysrecord" 
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
 
       
        <asp:SqlDataSource ID="todaysrecord" runat="server"
             
              ConnectionString = "<%$ ConnectionStrings:parkconnection %>" 
              SelectCommand = "SELECT * FROM customer WHERE parkdate=@parkdate ">

            <SelectParameters>
    <asp:ControlParameter Name="parkdate" 
      ControlID="Label1"
      PropertyName="Text"/>
  </SelectParameters>
    </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
</asp:Content>
