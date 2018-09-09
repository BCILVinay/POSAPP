<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestMultiLanguage.aspx.cs" Inherits="Practice.ASP_MultiLanguageApp.TestMultiLanguage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" Text="<%$Resources:Resource, Greetings %>" runat="server" Font-Bold="true" />
    <br />
    <br />
    <span><%=Resources.Resource.Introduction %></span>

</asp:Content>
