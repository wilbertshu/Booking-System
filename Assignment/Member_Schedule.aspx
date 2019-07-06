<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Member_Schedule.aspx.cs" Inherits="Member_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
  <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            Booking Date
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
          Choose your date:<br />
          <asp:TextBox ID="txtCalendar" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
          <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
              <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
              <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
              <OtherMonthDayStyle ForeColor="#999999" />
              <SelectedDayStyle BackColor="#333399" ForeColor="White" />
              <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
              <TodayDayStyle BackColor="#CCCCCC" />
          </asp:Calendar>
          <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCalendar" Display="Dynamic" ErrorMessage="Fill in the date!" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <br />
          Time:<br />
          <asp:DropDownList ID="ddlTime" runat="server" class="form-control">
              <asp:ListItem>07:30 - 09:30am</asp:ListItem>
              <asp:ListItem>10:00 - 12:00pm</asp:ListItem>
              <asp:ListItem>15:00 - 17:00pm</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
          Court name:<br />
          <asp:DropDownList ID="ddlCourt" runat="server" class="form-control">
              <asp:ListItem>Basketball</asp:ListItem>
              <asp:ListItem>Futsal</asp:ListItem>
              <asp:ListItem>Badminton</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>
    </div>
  </div>

  <div class="accordion" id="accordionExample2">
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            Payment Type</button>
      </h5>
    </div>

    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
              <asp:ListItem Text="Cash" Value="0">Cash</asp:ListItem>
          </asp:DropDownList>
          <br />
      </div>
    </div>
  </div>
</div>
</div>
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-outline-primary" OnClick="btnSubmit_Click"/>&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-outline-primary" OnClick="btnCancel_Click"/>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

