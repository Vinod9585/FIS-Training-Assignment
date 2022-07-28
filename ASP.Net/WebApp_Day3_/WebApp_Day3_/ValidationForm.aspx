<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationForm.aspx.cs" Inherits="WebApp_Day3_.ValidationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center;color:blue">Registration Form</h2>
            <br />

            Username :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username field cannot be blank" ControlToValidate="TxtName" ForeColor="#CC0000" ValidationGroup="RegisterGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password field cannot be blank" ControlToValidate="TxtPass" ForeColor="#CC0000" ValidationGroup="RegisterGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Confirm Password :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtCPass" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password didn't match" ControlToCompare="TxtPass" ControlToValidate="TxtCPass" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="RegisterGroup"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCPass" Display="Dynamic" ErrorMessage="Confirm Password field cannot be blank" ForeColor="#CC0000" ValidationGroup="RegisterGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Age :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtAge" runat="server" TextMode="Number"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be between 18 to 50" ControlToValidate="TxtAge" ForeColor="#CC0000" MaximumValue="50" MinimumValue="18" Type="Integer" ValidationGroup="RegisterGroup"></asp:RangeValidator>
            <br />
            <br />
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter correct email address" ControlToValidate="TxtEmail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RegisterGroup"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" ValidationGroup="RegisterGroup" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="RegisterGroup" />
            <br />
            <hr />

            <h2 style="text-align:center;color:green;font-size:20px">Login Form</h2>
            <br />

            Username :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtUname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtUname" ErrorMessage="Please Enter Username " ForeColor="#CC0000" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEID" ErrorMessage="Enter Email" ForeColor="#CC0000" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" ValidationGroup="LoginGroup" />

            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="LoginGroup" />

        </div>
    </form>
</body>
</html>
