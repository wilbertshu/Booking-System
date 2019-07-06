<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="lblName" runat="server"></asp:Label>
<br />
<br />
        <div class="card">
          <div class="card-header">
            Welcome to Elysium Sport Booking Website
          </div>
          <div class="card-body">
            <h5 class="card-title">Good day everyone</h5>
            <p class="card-text">We wish you have a good day always.</p>
          </div>
        </div>
        <br />
    
        <div class="card text-center">
          <div class="card-header">
            Event on 16th May
          </div>
          <div class="card-body">
            <h5 class="card-title">Futsal Competition</h5>
            <p class="card-text">With the help from a lot of sponsor , this is our first competition that will be hold on our futsal court<br />
            Please register your team in the link below here.</p>
            <a href="#" class="btn btn-primary">Registration date has passed</a>
          </div>
          <div class="card-footer text-muted">
            2 weeks ago
          </div>
        </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

