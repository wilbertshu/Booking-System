<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Schedule.aspx.cs" Inherits="Admin_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Search Member's username:
    <asp:TextBox ID="txtSearch" class="form-control" runat="server"></asp:TextBox>
    <br />
    <asp:DropDownList ID="ddlCourt" runat="server" class="form-control">
        <asp:ListItem>Basketball</asp:ListItem>
        <asp:ListItem>Futsal</asp:ListItem>
        <asp:ListItem>Badminton</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnSearch" runat="server" class="btn btn-outline-primary" Text="Search" onClick="btnSearch_Click"/>&nbsp;
    <asp:Button ID="btnReset" runat="server" class="btn btn-outline-primary" Text="Reset" onClick="btnReset_Click"/>&nbsp;
    <asp:Button ID="btnBack" runat="server" class="btn btn-outline-primary" Text="Back" OnClick="btnBack_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server">
    <table style="width: 100%" class="table">
        <tr>
            <td>Username</td>
            <td>Date</td>
            <td>Time</td>
            <td>Court</td>
        </tr>
        <%=fetchData()%>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
    <hr />
    <br />
    <table style="width: 100%">
        <tr>
            <td>User Information</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtUser" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Booking Date</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Booking Time</td>
            <td>
                <asp:TextBox ID="txtTime" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Booked Court / Field</td>
            <td>
                <asp:TextBox ID="txtCourt" runat="server" class="form-control" ReadOnly="True"></asp:TextBox >
            </td>
        </tr>
        <tr>
            <td>Approval</td>
            <td>
                <asp:DropDownList ID="ddlApprove" runat="server" class="form-control">
                    <asp:ListItem>Yes</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnApprove" runat="server" Text="Approved" class="btn btn-outline-primary" onClick="btnApprove_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-outline-primary" onClick="btnDelete_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnExit" runat="server" Text="Cancel" class="btn btn-outline-primary" OnClick="btnBack_Click" />
    <br />
    <br />
    <br />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

