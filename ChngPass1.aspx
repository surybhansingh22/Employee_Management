<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="ChngPass1.aspx.cs" Inherits="Employee_Management.ChngPass1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 1296px;
        height: 138px;
    }
    .auto-style9 {
        color: #FFFFFF;
    }
    .auto-style13 {
        width: 648px;
        text-align: center;
        color: #FFFFFF;
        height: 35px;
    }
    .auto-style14 {
        width: 648px;
        text-align: center;
        height: 35px;
    }
    .auto-style15 {
        text-align: center;
        height: 35px;
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
    &nbsp;
    <br />
    <table class="auto-style3" style="padding-top: 0px; padding-right: auto; padding-bottom: 0px; padding-left: auto; margin: 0px auto 0px auto">
    <tr>
        <td class="auto-style16">Old Password</td>
        <td class="auto-style17">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">New Password</td>
        <td class="auto-style17">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Confirm Password</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" colspan="2">
            <asp:Button ID="Button2" runat="server" BackColor="#624DE4" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style9"  Text="Change Password" OnClick="Button2_Click1" style="height: 27px" />
        </td>
    </tr>
</table>
</asp:Content>
