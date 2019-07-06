<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="para">
          <br />
          <h1>
          Welcome to the Login Page
          </h1>
          <hr>
      </div>
    <br />
      <div class="form-group">
          Username<asp:TextBox ID="txtUser" runat="server" class="form-control"></asp:TextBox>
      </div>
    <br />
      <div class="form-group">
        Password<asp:textbox runat="server" class="form-control" TextMode="Password" ID="txtPassword"></asp:textbox>
      </div>
    <div class="form-group">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot password?</asp:LinkButton>
        <br />
      </div>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="Wrong Email or Password!"></asp:Label>
<br />
    <br />
    <asp:button runat="server" text="Login" class="btn btn-outline-primary text-center" ID="btnLogin" OnClick="btnLogin_Click"/>
&nbsp;&nbsp;&nbsp; 
    <asp:button runat="server" text="Cancel" class="btn btn-outline-primary text-center" ID="btnCancel" 
        OnClick="btnCancel_Click"/>
    <br />
    <br />
</asp:Content>

