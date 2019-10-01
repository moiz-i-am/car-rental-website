<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMainPage.aspx.cs" Inherits="car_rental_system_website.AdminMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        Welcome 
        <asp:Label ID="lblAdminName" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnCars" runat="server" Text="Manage Cars" Width="169px" OnClick="btnCars_Click" />
        <br />
        <br />
        <asp:Button ID="btnAdmins" runat="server" Text="Manage Admins" Width="170px" OnClick="btnAdmins_Click" />
        <br />
        <br />
        <asp:Button ID="btnCustomers" runat="server" Text="Manage Customers" OnClick="btnCustomers_Click" />
        <br />
        <br />
        <asp:Button ID="btnMessages" runat="server" OnClick="btnMessages_Click" Text="Show Messages" Width="170px" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
    
    </div>
    </form>
</body>
</html>
