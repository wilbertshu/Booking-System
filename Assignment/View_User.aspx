<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_User.aspx.cs" Inherits="ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="para">
        <h2>
            View Members
        </h2>
        <hr />
    </div>
    
    <br />
    <div class="card">
        <table style="width: 100%; margin-top: 0px;" class="w-100 table">
            <tr>
                <td>Full Name</td>
                <td>Username</td>
                <td>Email</td>
                <td>Country</td>
                <td>Gender</td>
                <td>User Type</td>
                <td style="word-wrap: break-word">Address</td>
            </tr>
            <%=fetchData()%>
        </table>
        </div>
        <br />
        <br />
    <div class="text-center">
    <asp:Button ID="btnEdit" runat="server" Text="Edit Member" class="btn btn-outline-primary" OnClick="btnEdit_Click"/>&nbsp;
    <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-outline-primary" OnClick="btnCancel_Click"/>
    </div>
</asp:Content>



