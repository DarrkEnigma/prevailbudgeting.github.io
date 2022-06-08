<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Final_Self_Project.LoginPage" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login Page</title>

    <style>
        body{
            margin:0;
            padding:0;
            font-family:montserrat;
            background:url(GALAXY.jpg);
            height:100vh;
            overflow:hidden;
        }
        .centre{
            position:absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%);
            width:400px;
            background:white;
            border-radius:10px;
            height: 502px;
        }
        .centre h1{
            text-align:center;
            padding:0 0 20px 0;  
            border-bottom: 1px solid silver;
        }
        .centre form{
            padding:0 40px;
            box-sizing:border-box;
        }
        form .textfield{
            position:relative;
            border-bottom: 2px solid #adadad;
            margin:30px 0;
        }
        .textfield input{
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 0 5px;
            font-size: 16px;
            background:none;
            outline:none;
        }
        .textfield label{
            position:absolute;
            top:50%;
            left:5px;
            color:#adadad;
            transform:translateY(-50%);
            font-size:16px;
            pointer-events:none;
        }
        .textfield span::before{
            content:'';
            position:absolute;
            top:40px;
            left:0;
            width:100%;
            height:2px;
            background:#2691d9;
            transition: .5s;
        }
        .textfield input:focus ~ label,
        .textfield input:valid ~ label{
            top:-5px;
            color: #2691d9;
        }
        .textfield input:focus ~ span::before,
        .textfield input:valid ~ span::before{
            width:100%;
        }
        button{
            width:100%;
            height: 50px;
            border: 1px solid;
            background:#2691d9;
            border-radius: 25px;
            font-size: 18px;
            color: #e9f4fb;
            font-weight:700;
            cursor:pointer;
            outline:none;
        }
        button{
            border-color: #2691d9;
            transition: .5s;
        }
        .signup_link{
            margin:30px 0;
            text-align:center;
            font-size: 16px;
            color: #666666;
        }
        .signup_link a{
            color:#2691d9;
            text-decoration: none;
        }
        .signup_link a:hover{
            text-decoration:underline;
        }
    </style>
    
</head>
<body>
   
   <div class="centre">
       <form id="form1" runat="server">
       <h1>
           <asp:Label ID="errorlbl" runat="server"></asp:Label>
           </h1>
           <p>
               &nbsp;</p>
           <h1>LOGIN</h1>
           <div class="textfield">
               <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
               <br />
               <asp:TextBox ID="loginusernametxtbox" runat="server" Height="24px" Width="304px"></asp:TextBox>
               <br />
           </div>
           <div class="textfield">
               <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
               
&nbsp;<asp:TextBox ID="loginpasswordtxtbox" runat="server" Width="297px" TextMode="Password"></asp:TextBox>
               
           </div>
          
              <asp:Button ID="loginbtn" runat="server" Text="LOGIN" Height="46px" Width="321px" BackColor="#0066FF" ForeColor="White" OnClick="Button2_Click" />
              
           <br />
           <br />
           <div class="change_password_link">
               Forgot Password?

               <asp:Button ID="infobtn" runat="server" ForeColor="#0066FF" Height="21px" OnClick="Button3_Click1" Text="INFO" />

           </div>
              
           <div class="signup_link">
               Don't have an account? 
               <asp:Button ID="signupbtn" runat="server" ForeColor="#0066FF" OnClick="Button1_Click1" Text="SignUp" Height="21px" />
           </div>
       </form>
   </div>
        
 
</body>
</html>
