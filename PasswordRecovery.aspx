<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="Final_Self_Project.PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="First Name" Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="firstnametxtbox" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name" Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="lastnametxtbox" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contact Number" Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="contactnumbertxtbox" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="E-mail Address" Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="emailaddresstxtbox" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
&nbsp;
            <asp:TextBox ID="usernametxtbox" runat="server"></asp:TextBox>
            <asp:Button ID="getbtn" runat="server" OnClick="getbtn_Click" Text="GET" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Password" Visible="False"></asp:Label>
&nbsp;
            <asp:TextBox ID="passwordtxtbox" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="updatebtn" runat="server" OnClick="updatebtn_Click" Text="UPDATE" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="deletebtn" runat="server" OnClick="deletebtn_Click" Text="DELETE" Visible="False" />
            <br />
            <asp:GridView ID="GridView2" runat="server" Visible="False" Width="1154px">
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="backbtn" runat="server" OnClick="backbtn_Click" Text="BACK" Width="321px" Height="46px" BackColor="#0066FF" ForeColor="White" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
