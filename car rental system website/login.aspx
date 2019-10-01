<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="car_rental_system_website.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" type="text/css" href="css/loginStyle.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <script type="text/javascript">
        function openForm() {
            document.getElementById("Registration-Form").style.display = "block";
            return false;
        }

        function closeForm() {
            document.getElementById("Registration-Form").style.display = "none";
            return false;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    
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
        <a id="hpLinkRegister" onclick="return openForm()" >Register Now</a>
        <div class="form-popup" id="Registration-Form">

            <div class="form-container">
                <h1>Registration</h1>
                <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
                <label for="name"><b>Name</b></label>
                <asp:TextBox ID="txtRegName" runat="server" for="name"></asp:TextBox>
        
                <label for="email"><b>Email</b></label>
                <asp:TextBox ID="txtRegEmail" runat="server" for="email"></asp:TextBox>

                <label for="pass"><b>Password</b></label>
                <asp:TextBox ID="txtRegPassword" runat="server" for="pass" TextMode="Password"></asp:TextBox>

                <label for="gender"><b>Gender</b></label>
                <asp:TextBox ID="txtGender" runat="server" for="pass"></asp:TextBox>

                <label for="pass"><b>CNIC</b></label>
                <asp:TextBox ID="txtCnic" runat="server" for="pass"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
                <asp:Button ID="btnClose" runat="server" Text="Close" OnClientClick="return closeForm()" />
            </div>

        </div>
               
    </div>      
    
    </div>
    
    </form>
    
</body>
</html>
