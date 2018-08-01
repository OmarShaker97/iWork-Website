<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSeekers.aspx.cs" Inherits="JobSeekers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Job Seeker Homepage</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 312px">
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="What would you like to do today?"></asp:Label>
        <br />
        <br />
        <div><ul class="auto-style5">
        <a href="ApplyForJob.aspx">Apply for a Job</a>
        <a href="ViewJobsStatus.aspx">View Jobs Status</a>
        <a href="ChooseAJob.aspx">Choose a Job</a><br />
        <a href="Companies.aspx">Logout</a>
            </ul></div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" CssClass="myButt" />
    </div>
    </form>
</body>
</html>
