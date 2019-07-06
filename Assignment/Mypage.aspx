<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mypage.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="para">
          <br />
          <h1>
          Welcome to the My Page
          </h1>
          <hr>
      </div>
    <br />
    <br />
    <br />
    <div class="row">
      <div class="col-sm-6">
        <div class="card text-center">
          <div class="card-body">
            <h5 class="card-title">Login here!</h5>
            <p class="card-textr">Check your personal page</p>
            <a href="Login.aspx" class="btn btn-outline-primary">Login</a>
          </div>
        </div>
      </div>
      <div class="col-sm-6">
        <div class="card text-center">
          <div class="card-body">
            <h5 class="card-title text-center">Have you registered?</h5>
            <p class="card-text text-center">Come Register and join us!</p>
            <a href="Register.aspx" class="btn btn-primary">Register</a>
          </div>
        </div>
      </div>
    </div>
    </asp:Content>


