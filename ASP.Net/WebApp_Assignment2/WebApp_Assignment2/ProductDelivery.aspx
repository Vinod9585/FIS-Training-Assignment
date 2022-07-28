<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDelivery.aspx.cs" Inherits="WebApp_Assignment2.ProductDelivery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Supplier ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtSuppID" runat="server" Width="224px" ValidationGroup="group1"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="must be a 6 digit number" ControlToValidate="TxtSuppID" ForeColor="#CC0000" ValidationExpression="[0-9]{6}" ValidationGroup="SubmitGroup"></asp:RegularExpressionValidator>
            <br />
            <br />
            Supplier Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtSuppName" runat="server" Width="226px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Supplier Name field cannot be blank" ControlToValidate="TxtSuppName" ForeColor="#CC0000" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Product Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtProdName" runat="server" Width="230px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Name field cannot be blank" ControlToValidate="TxtProdName" ForeColor="#CC0000" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Quantity :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtQuantity" runat="server" Width="235px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Quantity field cannot be blank" ControlToValidate="TxtQuantity" ForeColor="#CC0000" Display="Dynamic" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Quantity must be between 100 to 1000" ControlToValidate="TxtQuantity" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="100" Display="Dynamic" OnDataBinding="Page_Load" ValidationGroup="SubmitGroup"></asp:RangeValidator>
            <br />
            <br />
            Supply Date (DD/MM/YYYY) :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtSuppDate" runat="server" Width="237px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter correct date" ControlToValidate="TxtSuppDate" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True" ValidationGroup="SubmitGroup"></asp:CustomValidator>
            <br />
            <br />
            Received By :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownRB1" runat="server" Width="248px">
                <asp:ListItem Selected="True">Select Receiver&#39;s Name</asp:ListItem>
                <asp:ListItem>Vinod</asp:ListItem>
                <asp:ListItem>Mahesh</asp:ListItem>
                <asp:ListItem>Apurv</asp:ListItem>
                <asp:ListItem>Swapnil</asp:ListItem>
                <asp:ListItem>Pramod</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="DropDownRB1" ErrorMessage="Please select correct option" ForeColor="#CC0000" OnServerValidate="CustomValidator2_ServerValidate" ValidationGroup="SubmitGroup"></asp:CustomValidator>
            <br />
            <br />
            Email Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtEmail" runat="server" Width="241px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter the correct email ID" ControlToValidate="TxtEmail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="SubmitGroup"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Email Address cannot be blank" ForeColor="#CC0000" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            Receiver Phone :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtRecPhone" runat="server" Width="238px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Receiver Phone is a mandatory field" ControlToValidate="TxtRecPhone" ForeColor="#CC0000" Display="Dynamic" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter correct phone number" ControlToValidate="TxtRecPhone" ForeColor="#CC0000" ValidationExpression="((\+*)((0[ -]*)*|((91 )*))((\d{12})+|(\d{10})+))|\d{5}([- ]*)\d{6}" Display="Dynamic" ValidationGroup="SubmitGroup"></asp:RegularExpressionValidator>
            <br />
            <br />
            Is Invoiced :
            <br />
            <asp:RadioButtonList ID="RBYesNo" runat="server" RepeatDirection="Horizontal" Width="200px">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please choose 'Yes' or 'No'" ForeColor="#CC0000" ControlToValidate="RBYesNo" ValidationGroup="SubmitGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" ValidationGroup="SubmitGroup" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
