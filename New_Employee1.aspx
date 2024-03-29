<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="New_Employee1.aspx.cs" Inherits="Employee_Management.New_Employee1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1296px;
            height: 170px;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style15 {
            text-align: center;
            height: 34px;
        }
        .auto-style16 {
            width: 648px;
            text-align: center;
            color: #FFFFFF;
            height: 34px;
        }
        .auto-style17 {
            width: 648px;
            text-align: center;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style3" style="padding-top: 0px; padding-right: auto; padding-bottom: 0px; padding-left: auto; margin: 0px auto 0px auto">
        <tr>
            <td class="auto-style16">Employee ID</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Employee Name</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Salary</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Department</td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="#624DE4" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style9"  Text="Register" OnClick="Button2_Click1" />
            </td>
        </tr>
    </table>

</asp:Content>
