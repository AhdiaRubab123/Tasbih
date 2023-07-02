<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Tasbih.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
    <header>
        <img src="images/digitallogo.png" />
        <h2 class="logo">Tasbeeh</h2>
        <nav class="navigation" style=" margin-left: 300px;">
            <a href="index.aspx">Home</a>
           <a href="Create_Tasbeeh.aspx">Create Tasbeeh</a>
          
            <a href="ViewDetails.aspx">View Details</a>
            <asp:Button ID="Button1" runat="server" Text="Login"  class="btnLogin-popup" OnClick="Button1_Click" style=" margin-left: 200px;"/>
            
        </nav>
    </header>
        <div>
            <h1 class="content" >Count and save<br /> your dhikrs</h1>
            <p class="desc" >You can save your tesbihat</p>
        </div>
         
    </form>
</body>
</html>
