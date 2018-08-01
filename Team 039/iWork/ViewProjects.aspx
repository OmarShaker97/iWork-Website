<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProjects.aspx.cs" Inherits="ViewProjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>View Projects</title>
    <style type="text/css">
        .auto-style1 {
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
            left: 0px;
            top: -1px;
        }
        .auto-style3 {
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
            left: 1px;
            top: -1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="RegularEmployees.aspx">Home</a>
        <a href="ViewProjects.aspx">View Projects</a>
        <br />
        <a href="StaffMembers.aspx">Staff Member Page</a>
        <a href="Companies.aspx">Logout</a>
        <br />
            </ul></div>
    
        <br />
        <table style="width:100%;">
            <tr>
                <td>   
    
        <asp:Label ID="Label1" runat="server" Text="View tasks in a certain project" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
    
        <asp:TextBox ID="txt_project" runat="server" placeholder="Project Name" CssClass="auto-style1"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" CssClass="auto-style2" />
                </td>
                <td>
        <asp:Button ID="btn_projects" runat="server" OnClick="btn_projects_Click" Text="Back to Projects" CssClass="auto-style3" />
                </td>
            </tr>
            
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <table style="width:100%;">
            <tr>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Finalize/Work on Task" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:TextBox ID="txt_taskname" runat="server" placeholder="Task Name" CssClass="auto-style1"></asp:TextBox>
                </td>
                <td>
        <asp:Button ID="btn_finalize" runat="server" OnClick="btn_finalize_Click" Text="Finalize" class="myButt"/>
    
                </td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Work on the task again" CssClass="myButt" />
    
                </td>
            </tr>
           
        </table>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>
