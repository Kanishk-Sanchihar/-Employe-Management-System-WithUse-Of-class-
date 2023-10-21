<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_emp.aspx.cs" Inherits="login_emp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style3 {
            font-style: italic;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <table border="1" cellpadding="3" cellspacing="0" align="center" width="30%">
            <tr>
                <td class="auto-style2" colspan="2" style="text-align: center"><em><strong>LOGIN</strong></em></td>
            </tr>
            <tr>
                <td class="auto-style4"><i style="text-align: center">Enter Employee Id</i></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Admin Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
