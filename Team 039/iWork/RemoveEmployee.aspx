<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RemoveEmployee.aspx.cs" Inherits="RemoveEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Remove Regular Employees</title>
    <style type="text/css">
        .auto-style1 {
            height: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div><ul class="auto-style5">
                <a href="Managers.aspx">Home</a><br />
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

            <a href="Companies.aspx">Logout</a>
            
                </ul></div>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Regular Employee" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Project Name" CssClass="search-box"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="button1" runat="server" Text="Delete RegularEmployee"  OnClick="Delete_Employee" CssClass="myButt"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
               
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
