<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImages.aspx.cs" Inherits="BruMagic.UploadImages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        </p>
        <p>
            <asp:Button ID="UploadBtn" runat="server" Text="Upload" OnClick="UploadBtn_Click" />
        </p>
        <p>
            <asp:Image ID="CurrentImage" runat="server" />
        </p>
    </form>
</body>
</html>
