<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Edit1.aspx.cs" Inherits="Employee_Management.Edit1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 621px
        }
        .auto-style5 {
            width: 143px;
        }
        .auto-style6 {
            width: 144px;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style8 {
            width: 144px;
            text-align: center;
        }
        .auto-style9 {
            width: 361px
        }
        .auto-style13 {
            width: 9px;
        }
        .auto-style14 {
            width: 179px;
            color: #FFFFFF;
        }
        .auto-style15 {
            color: #FFFFFF;
        }
        .auto-style16 {
            width: 179px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p class="text-center">
        <table cellpadding="3" cellspacing="3" class="auto-style4" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style5"><span class="auto-style15"><strong>Employee</strong></span> <span class="auto-style15"><strong>ID</strong></span>&nbsp; </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#624DE4" BorderColor="White" BorderStyle="Double" BorderWidth="1px" CssClass="auto-style7"  Text="Search" Width="150px" OnClick="Button2_Click1" />
                    </strong></td>
            </tr>
        </table>
    </p>
    <p class="text-center">
        <table cellpadding="3" cellspacing="3" class="auto-style9" style="margin: 0px auto 0px auto">
            <tr>
                <td class="auto-style14"><strong>Employee ID </strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Name</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Salary</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Department</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table cellpadding="4" cellspacing="4" class="w-4\/5" style="margin: 0px auto 0px auto">
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" BackColor="#5C42FF" BorderColor="White" BorderStyle="Double" BorderWidth="1px" CssClass="auto-style7" Text="UPDATE" Width="150px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button4" runat="server" BackColor="#5C42FF" BorderColor="White" BorderStyle="Double" BorderWidth="1px" CssClass="auto-style7" Text="DELETE" Width="150px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
        </table>
    </p>
</asp:Content>
