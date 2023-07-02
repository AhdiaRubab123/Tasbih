<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartTasbeeh.aspx.cs" Inherits="Tasbih.StartTasbeeh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    
    <script>
        document.addEventListener('keydown', function (event) {
            if (event.keyCode === 13 && !event.repeat) {
                __doPostBack('btnCount', '');
                event.preventDefault();
            }
        });
    </script>

</head>
<body>
   <header>
        <img src="images/digitallogo.png" />
        <h2 class="logo">Tasbeeh
        </h2>
        <nav class="navigation" style=" margin-left: 300px;">
            <a href="index.aspx">Home</a>
            <a href="Create_Tasbeeh.aspx">Create Tasbeeh</a>
            <a href="ViewDetails.aspx">View Details</a>
        </nav>
    </header>
    <div class="wrapper" style="width:550px;">
        <span class="icon-close"><ion-icon name="close"></ion-icon></span>
        <div class="form-box Tasbeeh">
            <h2>Start Tasbeeh</h2>
              <br />
              <br />
              <br />
            <br />
            <form id="form1" runat="server">    
                <div>

                    <asp:Label ID="Label3" runat="server" Text="Counts:" class="text1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox1" runat="server" class="input1" style="height:60px;width:60px;border-radius:30px;text-align:center;" Text="0" ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" class="btnTasbeeh" style="border-radius:10px;" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" class="btnTasbeeh" style="background:red;border-radius:10px;"/>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Count" class="btnTasbeeh" style="background:blue;border-radius:10px;"/>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="View Details" OnClick="Button4_Click" class="btnTasbeeh" style="background:saddlebrown;width:200px;border-radius:10px;"/>

                </div>
            </form>

        </div>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </div>
  
</body>
</html>
<%--class="btnTasbeeh" 


class="btnTasbeeh" style="background:red;"
class="btnTasbeeh" style="background:saddlebrown;"
--%>

