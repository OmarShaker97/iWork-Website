<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Companies.aspx.cs" Inherits="Companies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>iWork</title>
    <style type="text/css">
        .auto-style5 {
            left: 0px;
            top: 0px;
        }
        .auto-style8 {
            position: relative;
            width: 100%;
            outline-width: 0;
            outline-style: none;
            outline-color: invert;
            border-radius: 15px;
            left: 0px;
            top: 2px;
            border: 1px solid #ccc;
            padding: 10px;
        }
        .auto-style9 {
            height: 108px;
        }
        .auto-style10 {
            height: 108px;
            width: 481px;
        }
        .auto-style11 {
            width: 100%;
            height: 171px;
        }
        .auto-style12 {
            position: relative;
            width: 19%;
            outline-width: 0;
            outline-style: none;
            outline-color: invert;
            border-radius: 15px;
            left: 190px;
            top: 0px;
            border: 1px solid #ccc;
            padding: 10px;
        }
    </style>
</head>
<body style="height: 64px">
    <form id=   "form1" runat="server">
        <div><ul class="auto-style5">
            <a href="Login.aspx">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Register.aspx">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ViewJobsCompanies.aspx">View Jobs</a>
            </ul></div>
        <div>
            <br />
            
            <table class="auto-style11">
                <tr>
                    <td class="auto-style10">
            <asp:TextBox class="search-box" ID="txt_name" runat="server" placeholder="Company Name"></asp:TextBox>
            <asp:Button ID="btn_name" runat="server" Text="Search by Name" onclick="SButton" CssClass="myButt two" style="left: 2px; top: -1px; width: 118px; height: 47px"/>
                    </td>
                    <td class="auto-style9">
                        <br />
            <asp:TextBox class="search-box" ID="txt_type" runat="server" placeholder="Company Type"></asp:TextBox>
                        <br />
                        <br />
            <asp:Button ID="btn_type" runat="server" Text="Search by Type" onclick="TButton" CssClass="myButt two" style="left: 8px; top: -12px; width: 118px; height: 47px"/>
                    </td>
                    <td class="auto-style9">
                        <div class="flex">
                            <br />
            <asp:TextBox ID="txt_address" runat="server" CssClass="auto-style8" placeholder="Company Address"></asp:TextBox>
                            </div>
                        <br />
            <asp:Button ID="btn_address" runat="server" Text="Search by address" onclick="AButton" CssClass="myButt two" style="left: 8px; top: -12px; width: 118px; height: 47px" />
                    </td>
               
            </table>
            
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
<table style="width:100%;">
                <tr>
                    <td>If you&#39;re interested in viewing information of a specific company, select the company&#39;s email from the list below:<br />
                        <br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" width="200px"  DataTextField="email" DataValueField="email">
            </asp:DropDownList>
            <asp:Button ID="EButton" runat="server" OnClick="EButton_Click" Text="Go" border="none" background-color="white" CssClass="myButt two" style="left: 61px; top: -46px; width: 118px; height: 47px" />
                    </td>
                    <td>Enter the code of the department you wish to view, along with the company email in the drop down list above:<br />
                        <br />
                        <asp:TextBox ID="txt_code" runat="server" CssClass="auto-style12"></asp:TextBox>
            <asp:Button ID="btn_code" runat="server" OnClick="btn_code_Click" Text="Go" CssClass="myButt two" style="left: 22px; top: -2px; width: 118px; height: 47px"  />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sort companies in order of having the highest average salaries<br />
            <asp:Button ID="btn_avgsalary" runat="server" OnClick="btn_avgsalary_Click" Text="Sort" CssClass="myButt two" style="left: -43px; top: -7px; width: 118px; height: 47px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Label ID="Label4" runat="server" Text="Order by type"></asp:Label>
                        <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" CssClass="myButt two" style="left: 8px; top: -12px; width: 118px; height: 47px"  />
                    </td>
                   
                </tr>
                </table>
            <br />

        </div>
    </form>
</body>
</html>