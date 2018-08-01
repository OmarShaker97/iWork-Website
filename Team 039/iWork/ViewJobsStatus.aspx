<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewJobsStatus.aspx.cs" Inherits="ViewJobsStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>View Job Status</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div><ul class="auto-style5">
        <a href="JobSeekers.aspx">Home</a>
        <a href="ApplyForJob.aspx">Apply for a Job</a>
        <a href="ViewJobsStatus.aspx">View Jobs Status</a>
        <a href="ChooseAJob.aspx">Choose a Job</a><br />
        <a href="Companies.aspx">Logout</a>
            </ul></div>
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
        <br />
        <asp:Label ID="Label3" runat="server" Text="Delete Job Application"></asp:Label>
        <table style="width:100%;">
            <tr>
                <td>
        <asp:TextBox ID="txt_title" runat="server" CssClass="search-box" placeholder="Job Title"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txt_email" runat="server" CssClass="search-box" placeholder="Company Email"></asp:TextBox>
                </td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" class="myButt"/>
    
                </td>
            </tr>
          
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
