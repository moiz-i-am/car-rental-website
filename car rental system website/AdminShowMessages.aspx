<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminShowMessages.aspx.cs" Inherits="car_rental_system_website.AdminShowMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review messages</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <div class="search-bar" style="text-align:center;margin-top:30px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Enter Messsage Id: "></asp:Label>
            <asp:TextBox ID="txtMessageId" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSessionUser" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="Button" style="margin-top:10px" OnClick="btnSearch_Click"/>
        </div>
        <div class ="main-details-wrap" style="text-align:center;margin-top:20px">
            <br />
           
            Name:
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            <br />
            Email: 
            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Subject:
            <asp:Label ID="lblSubject" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Message 
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <br />
           
    </div>


    </div>
    </form>
</body>
</html>
