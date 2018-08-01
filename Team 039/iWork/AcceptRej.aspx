<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcceptRej.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Accept/Reject Requests</title>
    <style type="text/css">
        .auto-style1 {
            height: 476px;
        }
        .auto-style2 {
            position: relative;
            width: 100%;
            outline-width: 0;
            outline-style: none;
            outline-color: invert;
            border-radius: 15px;
            left: 0px;
            top: 0px;
            border: 1px solid #ccc;
            padding: 10px;
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
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Start Date" CssClass="auto-style2"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" placeholder="Applicant" CssClass="search-box"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label3" runat="server" Text="Response " Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="accepted">Accept</asp:ListItem>
                <asp:ListItem Value="rejected">Reject</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Reason" CssClass="search-box"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Reason should be specified." ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" class="myButt"/>
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
