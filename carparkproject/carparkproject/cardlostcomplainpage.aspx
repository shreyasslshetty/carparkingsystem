<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="cardlostcomplainpage.aspx.cs" Inherits="carparkproject.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" PostBackUrl="~/custhome.aspx" Text="CUSTOMER HOME" />
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Request for new CID :</strong></p>
    <p style="margin-left: 40px">
        
        <asp:GridView ID="GridView1" runat="server" 
             DataSourceID ="updatecardloss" 
             AutoGenerateColumns = "False" 
             DataKeyNames = "custname">
             <HeaderStyle BackColor="#33CC33" Font-Bold="True" Font-Italic="True" />
        <RowStyle BackColor="#CC00FF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300" />
            <Columns>
                <asp:BoundField DataField = "CId" HeaderText = "CID" />
                <asp:BoundField DataField = "custname" HeaderText = "custname" ReadOnly="true"/>
                <asp:BoundField DataField = "cardlosscomp" HeaderText = "cardlosscomp" />
       
                <asp:CommandField ShowEditButton = "True" />
                     
            </Columns>
            <HeaderStyle Font-Bold="True" />
        </asp:GridView>
 
       
        <asp:SqlDataSource ID="updatecardloss" runat="server"
             
              ConnectionString = "<%$ ConnectionStrings:parkconnection %>" 
              SelectCommand = "SELECT * FROM customer WHERE CID=@CID "
              UpdateCommand = "UPDATE customer SET CID = @CID , cardlosscomp=@cardlosscomp WHERE custname = @custname" >

            <SelectParameters>
            <asp:SessionParameter Name="CID" SessionField="cid" />
        </SelectParameters>
    </asp:SqlDataSource>

    </p>
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
    <p>
    </p>
</asp:Content>
