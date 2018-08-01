<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyBusinessRequests.aspx.cs" Inherits="ApplyBusinessRequests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Apply for Business Requests</title>
</head>
<body>
    <form id="form2" runat="server">
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
            <asp:TextBox ID="txt_startdate" runat="server" CssClass="search-box" placeholder="Start Date" OnTextChanged="txt_startdate_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="txt_enddate" runat="server" CssClass="search-box" placeholder="End Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:TextBox ID="txt_destination" runat="server" CssClass="search-box" placeholder="Destination"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="txt_purpose" runat="server" placeholder="Purpose" CssClass="search-box"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" class="myButt"/>

                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
