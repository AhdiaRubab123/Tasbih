<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Tasbeeh.aspx.cs" Inherits="Tasbih.Create_Tasbeeh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
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
     <div class="wrapper" style="width:550px;">
        <span class="icon-close"><ion-icon name="close"></ion-icon></span>
        <div class="form-box Tasbeeh">
            <h2>Create Your Tasbeeh</h2>
            <br />
            <br />
            <form id="form1" runat="server">    
                <div style="margin:0 auto;">

                    <asp:Label ID="Label1" runat="server" Text="Enter Name of Tasbeeh" class="text1"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" class="input1" ></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Enter Number of Counts" class="text1"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" class="input1" ></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Create Tasbeeh" OnClick="Button1_Click" class="btnTasbeeh" style="background:saddlebrown;width:200px;border-radius:10px;"/>
                </div>
            </form>

        </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </div>
    
</body>
</html>
