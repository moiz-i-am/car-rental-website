<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="car_rental_system_website.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" type="text/css" href="css/loginStyle.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    
        <div>
        <asp:Image ID="imgBackground" runat="server" Height="666px" ImageUrl="~/assets/audi-black-car-8639.jpg" Width="100%" />
            <div id="login-form" class="container">
                <asp:Label ID="lblMessageLogin" runat="server" Text="" ForeColor="White" Font-Size="Larger" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <asp:Image ID="icoEmail" runat="server" Height="44px" ImageUrl="~/assets/icons8-login-as-user-80 (1).png" Width="52px" />
                <asp:TextBox ID="txtEmail" runat="server" Width="265px"></asp:TextBox>
                <br />
                <br />
                <asp:Image ID="icoPassowrd" runat="server" Height="44px"  ImageUrl="~/assets/icons8-password-100 (1).png" Width="52px" />
                <asp:TextBox ID="txtPassword" runat="server" Width="265px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <div class="Button-Section">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="104px" OnClick="btnLogin_Click" />
                    <br />
            
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Names="Yu Gothic UI Semilight" Font-Size="Medium" ForeColor="White" Text="Not a member?"></asp:Label>
                    <br />
                    <br />
                </div>
            </div>
            </div>
    </form>
</body>
</html>
