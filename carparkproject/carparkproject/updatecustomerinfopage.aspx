<%@ Page Title="" Language="C#" MasterPageFile="~/mymaster.Master" AutoEventWireup="true" CodeBehind="updatecustomerinfopage.aspx.cs" Inherits="carparkproject.WebForm11" %>
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
        &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CID: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </strong>
    </p>
    <p>
        <strong class="newStyle1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" PostBackUrl="~/adminhome.aspx" Text="ADMIN HOME" />
        </strong></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="true"
             DataSourceID ="updatecust" 
             AutoGenerateColumns = "False" 
             DataKeyNames = "CID">
             <HeaderStyle BackColor="#33CC33" Font-Bold="True" Font-Italic="True" />
        <RowStyle BackColor="#CC00FF" Font-Bold="True" />
        <AlternatingRowStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="#FF3300" />
            <Columns>
                <asp:BoundField DataField = "CId" HeaderText = "CID" ReadOnly="true" />
                <asp:BoundField DataField = "custname" HeaderText = "custname" />
                <asp:BoundField DataField = "parkdate" HeaderText = "parkdate" SortExpression="parkdate" />
                <asp:BoundField DataField = "parkslot" HeaderText = "parkslot" ReadOnly="true"/>
                <asp:BoundField DataField = "cardlosscomp" HeaderText = "cardlosscomp" />
       
                <asp:CommandField ShowEditButton = "True" />
                     
            </Columns>
            <HeaderStyle Font-Bold="True" />
        </asp:GridView>
 
       
        <asp:SqlDataSource ID="updatecust" runat="server"
             
              ConnectionString = "<%$ ConnectionStrings:parkconnection %>" 
              SelectCommand = "SELECT * FROM customer WHERE CID=@CID "
              UpdateCommand = "UPDATE customer SET custname = @custname , parkdate=@parkdate ,cardlosscomp=@cardlosscomp WHERE CID = @CID" >

            <SelectParameters>
    <asp:ControlParameter Name="CID" 
      ControlID="DropDownList1"
      PropertyName="SelectedValue"/>
  </SelectParameters>
    </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
