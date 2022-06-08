<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Final_Self_Project.SignUpPage" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sign Up Page</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: montserrat;
            background: url(GALAXY.jpg);
            height: 100vh;
            overflow: hidden;
        }

        .centre {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 400px;
            background: white;
            border-radius: 10px;
        }

        .centre h1 {
                text-align: center;
                padding: 0 0 20px 0;
                border-bottom: 1px solid silver;
        }

        .centre form {
                padding: 0 40px;
                box-sizing: border-box;
        }

        form .textfield {
            position: relative;
            border-bottom: 2px solid #adadad;
            margin: 30px 0;
        }

        .textfield input {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 0 5px;
            font-size: 16px;
            background: none;
            outline: none;
        }

        .textfield label {
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            font-size: 16px;
            pointer-events: none;
        }

        .textfield span::before {
            content: '';
            position: absolute;
            top: 40px;
            left: 0;
            width: 100%;
            height: 2px;
            background: #2691d9;
            transition: .5s;
        }

        .textfield input:focus ~ label,
        .textfield input:valid ~ label {
            top: -5px;
            color: #2691d9;
        }

        .textfield input:focus ~ span::before,
        .textfield input:valid ~ span::before {
            width: 100%;
        }

        button {
            width: 100%;
            height: 50px;
            border: 1px solid;
            background: #2691d9;
            border-radius: 25px;
            font-size: 18px;
            color: #e9f4fb;
            font-weight: 700;
            cursor: pointer;
            outline: none;
        }

        button:hover {
                border-color: #2691d9;
                transition: .5s;
        }

       
    </style>

</head>
<body>
    <div class="centre">
        <form id="form1" runat="server">
            <asp:HiddenField ID="hfUserID" runat="server" />
            <asp:Label ID="successlbl" runat="server"></asp:Label>
            <br />
            <asp:Label ID="errorlbl" runat="server"></asp:Label>
        <h1>SIGN UP</h1>
            <div class="textfield">
                
                
              
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                <br />
                
                
              
                <asp:TextBox ID="firstnametxtbox" runat="server" Height="16px" Width="283px"></asp:TextBox>
                
                
              
            </div>
            <div class="textfield">
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                <br />
                <asp:TextBox ID="Lastnametxtbox" runat="server" Width="282px"></asp:TextBox>
                
                
            </div>
            <div class="textfield">
                <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                <br />
&nbsp;<asp:TextBox ID="contactnumbertxtbox" runat="server" Width="303px" ></asp:TextBox>
                
                
            </div>
            <div class="textfield">
                E-mail Address<br />
&nbsp;<asp:TextBox ID="emailtxtbox" runat="server" Width="306px"></asp:TextBox>
                
                
            </div>
            <div class="textfield">
                &nbsp;Username<br />
                <asp:TextBox ID="usernametxtbox" runat="server"  Width="271px"></asp:TextBox>
               
                
            </div>
            <div class="textfield">
                &nbsp;Password<br />
                <asp:TextBox ID="passwordtxtbox" runat="server" Width="265px" TextMode="Password" ></asp:TextBox>
                
                
            </div>
            <asp:Button ID="Button1" runat="server" Text="SignUp" ForeColor="White" Height="35px" OnClick="Button1_Click" Width="319px" BackColor="#0066FF" />
               
            

        </form>
    </div>
    

</body>
</html>
