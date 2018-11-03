<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="ExerciseTracker.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
    <h2>
        Registration Confirmation
    </h2>
    <p>
        Thanks for registering</p> <h4> Your Login is <% =Session["UserName"] %> </h4></header> 
            <br/>
             <br/>
<%--            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>--%>
    <a class="btn btn-info" href="Login.aspx" >Login Here</a>

</asp:Content>
