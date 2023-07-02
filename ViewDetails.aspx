<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Tasbih.ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Tasbeeh Counter</title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
     <style type="text/css">
         /*.auto-style1 {
             width: 100%;
         }*/
         .counter-table{
    width:80%;
    border:1px solid saddlebrown;
}
.counter-table th{
    color:saddlebrown;
    background-color:sandybrown;
    font-size:25px;
    font-weight:bold;
}
    .counter-table td {
        color: saddlebrown;
        font-size: 18px;
    }
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
     <header>
        <img src="images/digitallogo.png" />
        <h2 class="logo">Tasbeeh</h2>
        <nav class="navigation" style=" margin-left: 300px;">
            <a href="index.aspx">Home</a>
           <a href="Create_Tasbeeh.aspx">Create Tasbeeh</a>
            <a href="#">View Details</a>
        </nav>
    </header>
    <div class="wrapper" style="width:800px;">
        <span class="icon-close"><ion-icon name="close"></ion-icon></span>
        <div class="form-box Details">
            <h2>View Details</h2>
            <br />
            <br />
            <br />
             <form id="form1" runat="server">
                 <div >

                     <table class="counter-table" style="margin:0 auto;">
                         <tr>
                             <th>Count ID</th>
                             <th>Count Value</th>
                             <th>Action</th>
                         </tr>
                         <asp:Repeater ID="Repeater1" runat="server">
                             <ItemTemplate>
                                  <tr>
                                      <td><%# Eval("C_ID") %></td>
                             <td><%# Eval("Count_Num") %></td>
                             <td>
                                  <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" CommandName="Edit" CommandArgument='<%# Eval("C_ID") %>' CssClass="btn_edit"/>
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" CommandName="Delete" CommandArgument='<%# Eval("C_ID") %>' CssClass="btn_edit" style="background-color:red;width:70px;"/>
                             </td>
                         </tr>
                             </ItemTemplate>
                           

                         </asp:Repeater>
                         </table>
                     </div>
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" CssClass="btn_edit" style="background-color:saddlebrown;color:sandybrown;width:70px;"/>
                     </form>
        </div>
     </div>
   <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    
</body>
</html>
