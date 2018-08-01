<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffMembers.aspx.cs" Inherits="StaffMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Staff Members Homepage</title>
    <style type="text/css">
        .auto-style1 {
            outline: none;
            color: white;
            border: none;
            padding: 10px;
            display: block;
            margin: 10px auto;
            cursor: pointer;
            font-size: 11px;
            background-color: transparent;
            position: relative;
            border: 2px solid #fff;
@includetransition(all 0.5s ease);
            left: 0px;
            top: 0px;
        }
        .auto-style2 {
            outline: none;
            color: white;
            border: none;
            padding: 10px;
            display: block;
            margin: 10px auto;
            cursor: pointer;
            font-size: 11px;
            background-color: transparent;
            position: relative;
            border: 2px solid #fff;
@includetransition(all 0.5s ease);
            left: -1px;
            top: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
    </style>
</head>
<body style="height: 549px">
    <form id="form1" runat="server">
    <div style="height: 548px">
     <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="What would you like to do today?"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <div><ul class="auto-style5">
        <a href="ViewAttendance.aspx">View Attendance</a>&nbsp;&nbsp; <a href="ApplyLeaveRequests.aspx">Apply for Leave Request</a>&nbsp;&nbsp; <a href="ApplyBusinessRequests.aspx">Apply for Business Request</a>&nbsp;&nbsp; <a href="ViewRequestsStatus.aspx">View Requests</a>&nbsp;&nbsp; <a href="DeleteRequests.aspx">Delete Requests</a><br />
        <br />
        <a href="SendEmails.aspx">Send Emails</a>&nbsp;&nbsp; <a href="CheckReplyEmails.aspx">Check/Reply Emails</a>&nbsp;&nbsp; <a href="ViewAnnoucements.aspx">View Annoucements</a><a href="JobSeekers.aspx">Search for a job</a>
        <a href="Companies.aspx">Logout</a>
        <br />
             </ul></div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <table class="auto-style3">
            <tr>
                <td>
        <asp:Button ID="btn_checkin" runat="server" OnClick="btn_checkin_Click" Text="Check-in" CssClass="auto-style2" />
                </td>
                <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update"  CssClass="myButt"/>
                </td>
                <td>
        <asp:Button ID="btn_checkout" runat="server" OnClick="btn_checkout_Click" Text="Check-out" CssClass="auto-style1" />
                </td>
            
        </table>
    </div>
    </form>
</body>
</html>
