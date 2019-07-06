<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
          <br />
          <h1 class="text-center">
          Welcome to Registration Page
          </h1>
          <hr>
    <br />
    <p>
        Full Name
        <asp:TextBox ID="txtUser" runat="server" class="form-control"></asp:TextBox>
    </p>
    <asp:requiredfieldvalidator runat="server" errormessage="Please type in your Name" ControlToValidate="txtUser" ForeColor="Red" ID="validName" Display="Dynamic"></asp:requiredfieldvalidator>
    <p>
        Username
        <asp:TextBox ID="txtID" runat="server" class="form-control"></asp:TextBox>
    </p>
    <asp:RequiredFieldValidator ID="validID" runat="server" ErrorMessage="Please enter your Username" ControlToValidate="txtID" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <p>
        E-mail<asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email">
              </asp:TextBox>
    </p>
    <asp:requiredfieldvalidator runat="server" errormessage="Please type in your E-mail" ControlToValidate="txtEmail" EnableClientScript="True" ForeColor="Red" ID="validEmail" Display="Dynamic"></asp:requiredfieldvalidator>
    <p>
        Password<asp:TextBox ID="txtPassword" runat="server" class="form-control" style="margin-top: 0" TextMode="Password">
                </asp:TextBox>
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill in the password!" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <p>
        Confirm Password 
        </p>
    <p>
        <asp:TextBox ID="txtConfirm" runat="server" class="form-control" TextMode="Password">                         
        </asp:TextBox></p>
    <asp:comparevalidator runat="server" 
        errormessage="Password do not match!" ID="validCompare" ControlToCompare="txtConfirm" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:comparevalidator>
    <p>
        Country<asp:DropDownList ID="ddlCountry" runat="server" class="form-control">
            <asp:ListItem>Indonesia</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Singapore</asp:ListItem>
            <asp:ListItem>Thailand</asp:ListItem>
            <asp:ListItem>Vietnam</asp:ListItem>
        </asp:DropDownList></p>
    
    <p>
        Gender<asp:DropDownList ID="ddlGender" runat="server" class="form-control">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList></p>

    <p>
        Member Type<asp:DropDownList ID="ddlMember" runat="server" class="form-control">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Instructor</asp:ListItem>
            <asp:ListItem>Member</asp:ListItem>
        </asp:DropDownList></p>

    <p>
        Home Address<asp:TextBox ID="txtAddress" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
    </p>
    <br />
    <asp:ValidationSummary ID="validAll" runat="server" ForeColor="Red" HeaderText="List of Errors" />
    <br />
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            class="btn btn-outline-success" OnClick="btnSubmit_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="btnReset" runat="server" Text="Reset" 
            class="btn btn-outline-success text-center" OnClick="btnReset_Click"/>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            class="btn btn-outline-primary text-center" OnClick="btnCancel_Click"/>
    </p>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <br />
    <br />

</asp:Content>

