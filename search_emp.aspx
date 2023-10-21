<%@ Page Title="" Language="C#" MasterPageFile="~/employe_manag.master" AutoEventWireup="true" CodeFile="search_emp.aspx.cs" Inherits="search_emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: medium;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <br />

    <br />

    <table border="1" cellpadding="3" cellspacing="0" align="center" width="50%">
        <tr>
            <td align="center">Enter Employee Id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
            </td>
        </tr>
        
    </table>
    <br />
    <br />
    <table border="1" cellpadding="3" cellspacing="0" align="center" width="50%">
        <tr>
            <td class="auto-style3">Employee Name</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Employee Department</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Employee Salary</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

