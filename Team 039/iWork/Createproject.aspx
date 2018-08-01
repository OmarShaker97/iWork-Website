<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Createproject.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Create Project</title>
</head>
<body style="height: 729px">
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
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td><asp:TextBox ID="TextBox1" runat="server" Height="16px" placeholder="Project Name" CssClass="search-box"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Company Email" CssClass="search-box" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Start Date" CssClass="search-box"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td><asp:TextBox ID="TextBox4" runat="server" placeholder="End Date" CssClass="search-box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" class="myButt"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
