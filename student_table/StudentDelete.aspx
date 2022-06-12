<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDelete.aspx.cs" Inherits="student_table.StudentDelete" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
        }
        .auto-style2 {
            width: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Enter The Id To Delete:</h1>
        <div>
            <table class="auto-style1">
               <tr>
                    <td class="auto-style2">ID</td>
                    <td>
                        <asp:textbox id="ID" runat="server"></asp:textbox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="Delete_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>