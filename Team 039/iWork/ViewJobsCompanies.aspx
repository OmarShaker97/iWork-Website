<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewJobsCompanies.aspx.cs" Inherits="ViewJobsCompanies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Companies.css">
    <title>View Jobs</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:TextBox ID="txt_title" runat="server" placeholder="Search by title" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>
            <asp:Button ID="btn_title" runat="server" OnClick="btn_title_Click" Text="Go" CssClass="auto-style1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:TextBox ID="txt_shortdesc" runat="server" placeholder="Search by short description" CssClass="search-box"></asp:TextBox>
                    </td>
                    <td>
            <asp:Button ID="btn_short" runat="server" OnClick="btn_short_Click" Text="Go" CssClass="myButt" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
