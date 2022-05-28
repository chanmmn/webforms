<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebAppSQLInject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUser" runat="server" Text="Username"></asp:Label>
            <br/>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <br/>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br/>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Button ID="cmdLogin" runat="server" Text="Button" OnClick="cmdLogin_Click" />

        </div>
    </form>
</body>
</html>
