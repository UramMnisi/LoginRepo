<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Login.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        html {
            background-color:blue;
        }
        .content {
            padding:10px;
            margin:0px auto;
            align-content:center;
            width:200px;
            background:white;
        }

        .inputs {
            padding:2px;
            margin-bottom: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <h3><u>Login or Register</u></h3>
        <asp:TextBox
            id="txtUserName"
            PlaceHolder="User name"
            cssClass="inputs"
            runat="server" Height="30px" Width="193px" />
        <br />
        <asp:TextBox
            id="txtPass"
            PlaceHolder="Password"
            TextMode="Password"
            cssClass="inputs"
            runat="server" Height="32px" Width="196px" />
        <br />
        <asp:Button
            id="btnLogin"
            Text="Login"
            cssClass="inputs"
            width="100%"
            runat="server" Height="35px" OnClick="btnLogin_Click1" />
           &nbsp;
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsersConnectionString %>" ProviderName="<%$ ConnectionStrings:UsersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        <br /><br />
        <asp:Label
            id="lblResults"
            Text="uytiuiyiu"
            
            width="25%"
            height="30%"
            runat="server" />
    </div>
    </form>
</body>
</html>
