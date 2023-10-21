<%@ Page Title="" Language="C#" MasterPageFile="~/employe_manag.master" AutoEventWireup="true" CodeFile="edit_emp.aspx.cs" Inherits="edit_emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: x-large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" cellpadding="3" cellspacing="1" align="center" width="50%">
        <tr>
            <td class="auto-style4" colspan="3" style="text-align: center"><strong>Edit Employee</strong></td>
        </tr>
        <tr>
            <td>Enter Employee Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>Edit Employee Name</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Edit Employee Designation</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Edit Employee Salary</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

