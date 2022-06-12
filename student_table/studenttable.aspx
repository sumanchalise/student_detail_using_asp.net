<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studenttable.aspx.cs" Inherits="student_table.studenttable" %>

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
    <h2> Insert Student Informaton:</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
              <%-- <tr>
                    <td class="auto-style2">id</td>
                    <td>
                        <asp:textbox id="id" runat="server"></asp:textbox>
                    </td>--%>
                </tr>
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Please Enter Your Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td>
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="Confirm" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Confirm" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Confirm" ControlToValidate="Password" ErrorMessage="Passowrd Not Matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">DOB:</td>
                    <td>
                        <asp:TextBox ID="DOB" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DOB" ErrorMessage="Enter Your DOB"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age:</td>
                    <td>
                        <asp:TextBox ID="Age" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="Out of Range!!" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
