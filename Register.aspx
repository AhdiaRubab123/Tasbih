<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tasbih.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <img src="images/digitallogo.png" />
        <h2 class="logo">Tasbeeh</h2>
        <nav class="navigation" style=" margin-left: 300px;">
            <a href="index.aspx">Home</a>
            <a href="Create_Tasbeeh.aspx">Create Tasbeeh</a>
            <a href="ViewDetails.aspx">View Details</a>
        </nav>
    </header>
    <div class="wrapper">
        <span class="icon-close"><ion-icon name="close"></ion-icon></span>
        <div class="form-box register">
            <h2>Registration</h2>
           
            <br />
            <br />
    <form id="form1" runat="server">
      <table class="auto-style1">
            <tr class="input-box">
                <td>
                    <asp:Label ID="Label1" runat="server" Text="User Name" class="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="176px" class="input"></asp:TextBox>
                </td>
            </tr>
            <tr class="input-box">
                <td>
                    <asp:Label ID="Label2" runat="server" Text="EMail" class="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="176px" class="input"></asp:TextBox>
                </td>
            </tr>
            <tr class="input-box">
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Password" class="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="176px" class="input"></asp:TextBox>
                </td>
            </tr>
            <tr class="remember-forgot">
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to all terms and conditions" />
                </td>
               
            </tr>
            <tr >
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Register" class="btn" OnClick="Button1_Click"  />
                </td>
               
            </tr>
            <tr class="login-register">
                <td colspan="2"><p>Already have an account?<a href="Login.aspx" class="login-link">Login</a></p></td>
                
            </tr>
        </table>
       
        
       
    </form>
            </div>
        </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
