<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Employee_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style4 {
            text-align: center;
        }

        body {
            background-image: url('emp.png');
            background-size: 100%;
            background-repeat: no-repeat;
        }
        .auto-style5 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 638px;
        }
        .auto-style9 {
            width: 318px;
        }
        .auto-style10 {
            color: #FFFFFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div class="auto-style5">
               
                <strong>EMPLOYEE MANAGEMENT SYSTEM<br />
                <br />
                Login<br />
                <br />
                <br />
                </strong>
                <table class="auto-style6" style="margin: 0px auto 0px auto">
                    <tr>
                        <td class="auto-style9">Username</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Password</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><strong>
                            <asp:Button ID="Button1" runat="server" BackColor="#5C42FF" BorderColor="White" BorderStyle="Double" BorderWidth="2px" CssClass="auto-style10" OnClick="Button1_Click1" Text="Log In" />
                            </strong></td>
                    </tr>
                </table>
               
            </div>
        </div>
    </form>
</body>
</html>
