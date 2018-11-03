<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExerciseTracker.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @keyframes bouncing-loader {
  from {
    opacity: 1;
    transform: translateY(0);
  }
  to {
    opacity: 0.1;
    transform: translateY(-1rem);
  }
}
.bouncing-loader {
  display: flex;
  justify-content: center;
}
.bouncing-loader > div {
  width: 1rem;
  height: 1rem;
  margin: 3rem 0.2rem;
  background: #8385aa;
  border-radius: 50%;
  animation: bouncing-loader 0.6s infinite alternate;
}
.bouncing-loader > div:nth-child(2) {
  animation-delay: 0.2s;
}
.bouncing-loader > div:nth-child(3) {
  animation-delay: 0.4s;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Login Page</h2>
        <asp:Label ID="Label1" runat="server" Text="Please log in below to access the membership area."></asp:Label>
        <br />


        <br />
        <asp:Login ID="LoginControl" runat="server" 
            onauthenticate="LoginControl_Authenticate">
        </asp:Login>
    <div class="bouncing-loader">
  <div></div>
  <div></div>
  <div></div>
</div>

    <h3>Not a Member? </h3>
    <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Sign Up Here</asp:HyperLink>--%>
    <a class="btn btn-info" href="Registration.aspx" >Sign Up Here</a>
  
</asp:Content>

