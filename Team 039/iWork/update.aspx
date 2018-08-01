<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="update.css">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <h1>Update</h1>
            <form method="post">
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" placeholder="Personal Email"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Date of Birth"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Years of Experience"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="First Name"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Middle Name"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox8" runat="server" placeholder="Last Name"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                </form>
        </div>
    </form>
</body>
</html>
