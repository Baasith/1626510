<%@ Page Title="" Language="C#" MasterPageFile="~/BruMagic.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="BruMagic.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="form"
    <fieldset style="width:900px">
    <legend>Contact Us</legend>
   <p> <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Email Address "></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server" Height="20px" Rows="5" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        <input type="submit" value="Submit"
    </p>

<h3>Our Location</h3>
<div id="map">
     <script>
         function initMap() {
             var uluru = { lat: 4.5353, lng: 114.7277 };
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
