<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyForJob.aspx.cs" Inherits="ApplyForJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>Apply For Job</title>
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
    <div>
        <div><ul class="auto-style5">
        <a href="JobSeekers.aspx">Home</a>
        <a href="ApplyForJob.aspx">Apply for a Job</a>
        <a href="ViewJobsStatus.aspx">View Jobs Status</a>
        <a href="ChooseAJob.aspx">Choose a Job</a><br />
        <a href="Companies.aspx">Logout</a>
            </ul></div>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Company Email" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="txtCode" runat="server" placeholder="Department Code" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>
        <asp:TextBox ID="txtTitle" runat="server" placeholder="Job Title" CssClass="search-box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="btnApply" runat="server" OnClick="btnApply_Click" Text="Apply" CssClass="myButt" />
                </td>
                <td>
        <asp:Button ID="btnViewJobs" runat="server" OnClick="btnViewJobs_Click" Text="View Jobs" CssClass="auto-style1" />
                </td>
                <td>
        <asp:Button ID="btnViewQuestions" runat="server" OnClick="btnViewQuestions_Click" Text="View Questions" CssClass="auto-style1" />
                </td>
            </tr>
            
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>


    
        <asp:GridView ID="GridView2" runat="server">
            <Columns>
            <asp:TemplateField>
  <ItemTemplate>
    <asp:Checkbox ID="Yes" runat="server"
CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
      Text="Yes" OnCheckedChanged="Yes_CheckedChanged" />
  </ItemTemplate> 
</asp:TemplateField>
               <asp:TemplateField>
  <ItemTemplate>
    <asp:Checkbox ID="No" runat="server"
CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
      Text="No" />
  </ItemTemplate> 
</asp:TemplateField>
                </Columns>
        </asp:GridView>    
        <br />
        <asp:Button ID="ApplyQuestions" runat="server" OnClick="ApplyQuestions_Click" Text="Go" class="myButt"/>
    </div>
    </form>
</body>
</html>
