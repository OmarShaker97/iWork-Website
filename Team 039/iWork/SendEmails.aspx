<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendEmails.aspx.cs" Inherits="SendEmails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Send Emails</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><ul class="auto-style5">
                <a href="StaffMembers.aspx">Home</a>
        <a href="ViewAttendance.aspx">View Attendance</a>&nbsp;&nbsp; <a href="ApplyLeaveRequests.aspx">Apply for Leave Request</a>&nbsp;&nbsp; <a href="ApplyBusinessRequests.aspx">Apply for Business Request</a>&nbsp;&nbsp; <a href="ViewRequestsStatus.aspx">View Requests</a>&nbsp;&nbsp; <a href="DeleteRequests.aspx">Delete Requests</a><br />
        <br />
        <a href="SendEmails.aspx">Send Emails</a>&nbsp;&nbsp; <a href="CheckReplyEmails.aspx">Check/Reply Emails</a>&nbsp;&nbsp; <a href="ViewAnnoucements.aspx">View Annoucements</a><a href="Companies.aspx">Logout</a>
        <br />
             </ul></div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:TextBox ID="txt_recipient" runat="server" placeholder="Recipient" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>
            <asp:TextBox ID="txt_subject" runat="server" placeholder="Subject" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="209px" Width="829px" placeholder="Body" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="btn_send" runat="server" OnClick="btn_send_Click" Text="Send" class="myButt"/>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
