<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit_members.aspx.cs" Inherits="Edit_members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Search Member's Username:<br />
    <asp:TextBox ID="txtSearch" class="form-control" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSearch" runat="server" class="btn btn-outline-primary" Text="Search" onClick="btnSearch_Click"/>&nbsp;
    <asp:Button ID="btnReset" runat="server" class="btn btn-outline-primary" Text="Reset" onClick="btnReset_Click"/>&nbsp;
    <asp:Button ID="btnBack" runat="server" class="btn btn-outline-primary" Text="Back" OnClick="btnBack_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <hr />
    <br />
    <asp:Panel ID="Panel1" runat="server">
    <table style="width: 100%" class="table">
        <tr>
            <td>User Information</td>
            <td></td>
        </tr>
        <tr>
            <td>Full name</td>
            <td>
                <asp:TextBox ID="txtName" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtusername" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td>
                <asp:TextBox ID="txtMail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>User Type</td>
            <td>
                <asp:DropDownList ID="ddlType" runat="server" class="form-control">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Instructor</asp:ListItem>
                    <asp:ListItem>Member</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 27px">Country</td>
            <td style="height: 27px">
                <asp:DropDownList ID="ddlCountry" runat="server" class="form-control">
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Thailand</asp:ListItem>
                    <asp:ListItem>Vietnam</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 27px">Gender</td>
            <td style="height: 27px">
                <asp:DropDownList ID="ddlGender" runat="server" class="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save Changes" class="btn btn-outline-primary" OnClick="btnSave_Click"/>&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-outline-primary" OnClick="btnDelete_Click"/>
    <asp:Button ID="btnExit" runat="server" Text="Exit" class="btn btn-outline-primary" onClick="btnBack_Click"/>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

