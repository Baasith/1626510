<%@ Page Title="" Language="C#" MasterPageFile="~/BruMagic.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="BruMagic.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="form">
    <fieldset style="width:900px">
    <legend>Contact Us</legend>
   <p>
       <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
       <asp:TextBox ID="name" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="name" ErrorMessage="please enter your name"></asp:RequiredFieldValidator>
   </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Email Address "></asp:Label><br />
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="please enter your email"></asp:RequiredFieldValidator> 
        <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ValidationExpression="([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label><br />
        <asp:TextBox ID="subject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="subject" ErrorMessage="please enter your subject"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label><br />
        <asp:TextBox ID="comment" runat="server" Height="150px" Rows="5" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="send" OnClick="send_Click" runat="server" Text="Send" /></asp:button>
    </p>
    <p>
        <asp:Label ID="status" runat="server" /></asp:Label>
    </p>

<h3>Our Location</h3>
<div id="map">
     <script>
         function initMap() {
             var uluru = { lat: 4.8857, lng: 114.9317 };
             var map = new google.maps.Map(document.getElementById('map'), {
                 zoom: 15   ,
                 center: uluru
             });
             var marker = new google.maps.Marker({
                 position: uluru,
                 map: map
             });
         }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyByOo9l2tSnpr5buW8MILJNhlOzUfFDrOM&callback=initMap">
    </script>
    </fieldset>
</div>


</div>
</asp:Content>
