<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Search1.aspx.cs" Inherits="Employee_Management.Search1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            width: 7px;
        }
        .auto-style5 {
            width: 529px
        }
        .auto-style6 {
            width: 216px;
            text-align: center;
        }
        .auto-style7 {
            width: 217px;
        }
        .auto-style9 {
            width: 1296px;
            color: #FFFFFF;
            height: 174px;
        }
        .auto-style16 {
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style20 {
            text-align: center;
            color: #FFFFFF;
            height: 44px;
        }
        .auto-style21 {
            font-weight: bold;
        }
        .auto-style22 {
            background-color: #624DE4;
        }
        .auto-style23 {
            background-color: #624DE3;
        }
        .auto-style24 {
            text-align: center;
            height: 32px;
            width: 648px;
            color: #FFFFFF;
        }
        .auto-style25 {
            text-align: center;
            height: 32px;
            width: 648px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table class="auto-style5" style="margin: 0px auto 0px auto">
        <tr>
            <td class="auto-style6"><span class="auto-style3"><strong>Employee ID&nbsp;&nbsp; </strong></span>&nbsp; </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button2" runat="server" BackColor="#6652E4" BorderColor="White" BorderStyle="Double" BorderWidth="1px" CssClass="auto-style16" OnClick="Button2_Click" Text="Search" Width="150px" />
                </strong></td>
        </tr>
    </table>
    <br />
    <table class="auto-style9">
        <tr>
            <td class="auto-style24"><strong>Employee ID</td>
            <td class="auto-style25">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Width="150px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Name</strong></td>
            <td class="auto-style25">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style23" Width="150px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Salary</strong></td>
            <td class="auto-style25">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Width="150px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Department</strong></td>
            <td class="auto-style25">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Width="150px"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2"><strong>
                <asp:Button ID="Button3" runat="server" BackColor="#6652E4" BorderColor="White" BorderStyle="Double" BorderWidth="1px" CssClass="auto-style21" OnClick="Button3_Click" Text="OK" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
