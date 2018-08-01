<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Login.css">
    <title>Login</title>
    
</head>
<body background="spiration.png" >
    <form id="form1" runat="server">
    <div class="login">
        <h1>Login</h1>
    <form method="post">
        <asp:TextBox ID="userNameTXT" runat="server" placeholder="Username"></asp:TextBox>
    
                            <br />
        <asp:TextBox ID="passwordTXT" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
        <asp:Label ID="loginValidationLbl" runat="server"></asp:Label>
                <br />
        <asp:Button ID="LoginBTN" runat="server" style="height: 32px" Text="Let me in." 
                        onclick="LoginBTN_Click"  Cssclass="btn btn-primary btn-block btn-large"/>
    
                <br />
        <br />
        <font color="white">Not registered? Click <a href="Register.aspx">here</a> to register<br /></font>
        
    
    </div>
        </form>
    </form>
</body>
</html>
