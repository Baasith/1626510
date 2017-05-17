<%@ Page Title="" Language="C#" MasterPageFile="~/BruMagic.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BruMagic.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
         <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="LoginEmail" runat="server"></asp:TextBox>
    </p>

     <p>
         <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="LoginPassword" runat="server"></asp:TextBox>
    </p>
    
    <p>
        <asp:button runat="server" text="Login" OnClick="Unnamed1_Click"/>
    </p>
    <p>
        <asp:Label ID="litLoginError" runat="server" /></asp:Label>
    </p>
</asp:Content>
