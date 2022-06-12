<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="student_table.StudentUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style3 {
            width: 533px;
        }
    </style>
</head>
<body>
    <h1>Student Table Update:</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
               <tr>
                    <td class="auto-style2">ID</td>
                    <td class="auto-style3">
                        <asp:textbox id="ID" runat="server"></asp:textbox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Confirm" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Confirm" ControlToValidate="Password" ErrorMessage="Passowrd Not Matched"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Confirm" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DOB:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="DOB" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DOB" ErrorMessage="Enter Your DOB"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="Out of Range!!" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
