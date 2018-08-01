<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Managers.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Managers Homepage</title>
    <style type="text/css">
        .auto-style1 {
            height: 1086px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">


     <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="What would you like to do today?"></asp:Label>
        <br />
        <br />
<br />


            <div><ul class="auto-style5">
            <a href="View.aspx">View Requests</a><br />
            
             <a href="RemoveEmployee.aspx">Remove Regular Employee</a><br />
           
            <a href="Viewapp.aspx">View Application</a><br />
            
            <a href="AcceptRej.aspx">Accept / Reject Requests </a>
            
            <a href="AcceptRejapp.aspx">Accept / Reject Applications</a><br />
            
            <a href="Createproject.aspx">Create New Project<br /></a>
           
           <a href="DefineTask.aspx"> Define a Task</a><br />
         
           <a href="AssignTask.aspx"> Assign Regular Employee</a><br />
            
            <a href="changeReg.aspx"> Change Regular Emplyee</a><br />
      
            <a href="ReviewTasks.aspx"> Review Tasks</a><br />
           
            <a href="StaffMembers.aspx">Staff Members Page</a>

            <a href="JobSeekers.aspx">Search for a job</a>
             <a href="Companies.aspx">Logout</a>
            
                </ul></div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" class="myButt"/>
        </div>
    </form>
</body>
</html>
