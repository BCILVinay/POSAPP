<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MultiLanguage.aspx.cs" Inherits="Practice.ASP_MultiLanguageApp.MultiLanguage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label ID ="lbl1" runat ="server" Text ="<%$Resources:Resource, Greetings%>">

</asp:Label>
    <br />
    <span><%=Resources.Resource.Introduction%> </span>
</asp:Content>
