<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAttendance.aspx.cs" Inherits="ViewAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>View Attendance</title>
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
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
