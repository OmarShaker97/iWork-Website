<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Register.css">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <h1>Register</h1>
            <form method="post">
                                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required"></asp:RequiredFieldValidator>
                            <br />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                            <br />
        <asp:TextBox ID="txtPersonalEmail" runat="server" placeholder="Personal Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPersonalEmail" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtBirth" runat="server" placeholder="Date of Birth"></asp:TextBox>
            <asp:RequiredFieldValidator ID="BirthDateValidator" runat="server" ControlToValidate="txtBirth" ErrorMessage="Birth date Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtExp" runat="server" placeholder="Years of Experience"></asp:TextBox>
            <asp:RequiredFieldValidator ID="YearsOfExpValidator" runat="server" ControlToValidate="txtExp" ErrorMessage="Years of Experience Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtFirst" runat="server" placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstnameValidator" runat="server" ControlToValidate="txtFirst" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtMiddle" runat="server" placeholder="Middle Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="middlenameValidator" runat="server" ControlToValidate="txtMiddle" ErrorMessage="Middle Name Required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtLast" runat="server" placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lastnameValidator" runat="server" ControlToValidate="txtLast" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                            <br />
        <asp:Button ID="signupBTN" runat="server" Text="Signup" onclick="signupBTN_Click" />
        </div>
        </form>
    </form>
</body>
</html>
