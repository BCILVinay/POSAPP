<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MultiLanguageForm.aspx.cs" Inherits="Practice.ASP_MultiLanguageApp.MultiLanguageForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
   
    <asp:Label ID="Label1" Text="<%$Resources:Resource, Greetings %>" runat="server" Font-Bold="true" />
    <br />
    <br />
    <span><%=Resources.Resource.Introduction %></span>

    
    
     <div>
        <asp:RadioButton ID="RadioButton1"  GroupName ="R1" runat="server" Text ="English" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" />
        <asp:RadioButton ID="RadioButton2" GroupName ="R1" runat="server" Text ="Other" AutoPostBack="true" OnCheckedChanged ="RadioButton2_CheckedChanged"  />
    </div>
    <asp:Label ID="lblEngilish" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblHome" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblIntroduction" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblProduct" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lblContuctUs" runat="server" Text="Label"></asp:Label>


</asp:Content>
