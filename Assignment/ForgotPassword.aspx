<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-center">
        Password Recovery
    </h1>
    <hr />
    <br />
    <div class="form-group">
        E-mail<asp:textbox runat="server" class="form-control" TextMode="Email" ID="txtMail"></asp:textbox>
    </div>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
&nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" class="btn btn-outline-primary"/>
&nbsp;&nbsp;
<asp:Button ID="btnCancel" runat="server" Text="Back" class="btn btn-outline-primary"/>
</asp:Content>

