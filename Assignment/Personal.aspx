<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">
        <hr />
        <br />
        <img style="width:75px ; height:75px" src="I1.jpg" alt="Male" class="rounded-circle">
        <br />
        <br />
        <hr />
        Full Name<br />
        <asp:TextBox class="form-control" ID="txtName" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        Username<br />
        <asp:TextBox class="form-control" ID="txtUsername" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        E-mail<br />
        <asp:TextBox class="form-control" ID="txtEmail" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        Country<br />
        <asp:TextBox class="form-control" ID="txtCountry" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        Gender<br />
        <asp:TextBox class="form-control" ID="txtGender" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        User Type<br />
        <asp:TextBox class="form-control" ID="txtType" width="200px" runat="server" style="display: inline; text-align: center;" ReadOnly="True"></asp:TextBox><br />
        Address<br />
        <asp:TextBox class="form-control" ID="txtAddress" width="200px" runat="server" style="display: inline; text-align: center;" TextMode="MultiLine" ReadOnly="True"></asp:TextBox><br />
        <hr />
        Change Password<br />
        <asp:TextBox class="form-control" ID="txtPass" width="200px" runat="server" style="display: inline; text-align: center;" TextMode="Password"></asp:TextBox><br />
        Confirm Password<br />
        <asp:TextBox class="form-control" ID="txtConfirm" width="200px" runat="server" style="display: inline; text-align: center;" TextMode="Password"></asp:TextBox><br />
        <asp:CompareValidator ID="validCompare" runat="server" ErrorMessage="Password mis-match!" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ForeColor="Red"></asp:CompareValidator><br />
        <asp:Button ID="save" runat="server" Text="Change Password" class="btn btn-primary" OnClick="save_Click"/>
        <hr />
        <br />
        <asp:Button ID="cancel" runat="server" Text="Cancel" class="btn btn-primary" OnClick="cancel_Click"/>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

