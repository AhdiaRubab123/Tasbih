<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCount.aspx.cs" Inherits="Tasbih.EditCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
    <style>
        .btn_edit{
    color:white;
    background-color:green;
    border:none;
    font-size:20px;
    font-weight:bold;
    height:40px;
    width:50px;
}
    </style>
</head>
<body>
  
    <div class="wrapper">
        <span class="icon-close"><ion-icon name="close"></ion-icon></span>
        <div class="form-box login">
            <h2>Edit Details!</h2>
            <br /><br /><br /><br />
             <form id="form1" runat="server">
                  <div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Count:" class="text1"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>
                </div>
                      <br />
                      <br />
                      <br />
                <div class="form-group"> 
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="error-message" Visible="false"></asp:Label>
                      </div>
                      <br />
                      <br />
                      <br />
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="btn_edit"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" CssClass="btn_edit" style="background-color:red;width:70px;"/>
                      </div>
            </div>
        </form>
        </div>
     </div>
   <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
