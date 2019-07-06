<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_Schedule.aspx.cs" Inherits="ViewSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="para">
    <h2>
    Check your Schedule
    </h2>
    </div>
    <hr />
    <br />
    <asp:DropDownList ID="ddlSport" runat="server" class="form-control">
        <asp:ListItem>Basketball</asp:ListItem>
        <asp:ListItem>Futsal</asp:ListItem>
        <asp:ListItem>Badminton</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-outline-primary" OnClick="btnSearch_Click"/>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-outline-primary" OnClick="btnCancel_Click"/>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
    <table class="w-100 table">
        <tr>
            <td>Username</td>
            <td>Date</td>
            <td>Time</td>
            <td>Court</td>
        </tr>
        <%=fetchData()%>
    </table>
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Content>

