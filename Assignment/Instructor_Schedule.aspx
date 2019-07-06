<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Instructor_Schedule.aspx.cs" Inherits="Instructor_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="para">
        <h2>
            List of Approved Members
        </h2>
    </div>
    <br />
    <table style="width: 100%" class="table">
        <tr>
            <td>Username</td>
            <td>Date</td>
            <td>Time</td>
            <td>Court</td>
        </tr>
        <%=fetchData()%>
    </table>
    <br />
    <asp:button runat="server" text="Back to Home" class="btn btn-outline-primary text-center" ID="btnCancel" 
        OnClick="btnCancel_Click"/>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

