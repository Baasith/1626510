<%@ Page Title="" Language="C#" MasterPageFile="~/BruMagic.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BruMagic.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<p>
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
    <p>
         <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>

     <p>
         <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    
    <p>
        <asp:button runat="server" text="Register" OnClick="Unnamed1_Click" />
    </p>
    <p>
        <asp:Label ID="litRegisterError" runat="server" /></asp:Label>
    </p>

</asp:Content>
