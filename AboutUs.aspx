<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="LoginForm.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
         a:hover{
     background-color:aqua;
 }
         .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #333;
    padding: 10px;
}

.navbar a {
    color: white;
    text-decoration: none;
    padding: 8px 15px;
}

.navbar-left a:hover {
    background-color: #ddd;
    color: black;
}

.navbar-right {
    display: flex;
    align-items: center;
}

.search-bar {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 5px;
            border-radius: 5px;
            outline: none;
            width: 123px;
        }

.search-bar::placeholder {
    color: #ccc;
}

}
    </style>
<body>
    <form id="form1" runat="server">
        <center>
            <%-- nav --%>
           

      <div style="border: 1 px solid black; width: 100%; height: 92px; background-color: teal">

         <nav style="display: flex; align-items: center; background-color: teal; padding: 10px;">
             <a href="#" style="margin-right: 100px;">
                 <asp:Image ID="Image7" runat="server" Height="70px" ImageUrl="~/images/logo1jpg.jpg" Width="84px" />
             </a>
             <div style="flex-grow: 1;">
                 <ul style="list-style-type: none; margin: 0; padding: 0; display: flex;">
                     <li style="margin-right: 110px; border: 3 px solid black; border-radius: 10px">

                         <%--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Bold="True" ForeColor="White">Home</asp:HyperLink>--%>
                         <a href="HomePage.aspx" style="text-decoration: solid; color: white; border: 3 px solid black; border-radius: 10px; font-size: medium"><b>Home</b></a>
                     </li>
                     <li style="margin-right: 100px; border: 3 px solid black; border-radius: 10px">
                         <a href="Categories.aspx" style="text-decoration: solid; color: white; border: 3 px solid black; border-radius: 10px; font-size: medium"><b>Categories</b></a>
                         <%--<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Bold="True" ForeColor="White">Home</asp:HyperLink>--%>
                     </li>
                     <li style="margin-right: 100px; border: 3 px solid black; border-radius: 10px">
                         <a href="AboutUs.aspx" style="text-decoration: solid; color: white; border: 3 px solid black; border-radius: 10px; font-size: medium"><b>AboutUs</b></a>
                         <%--<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Bold="True" ForeColor="White">Home</asp:HyperLink>--%>
                     </li>
                     <li style="margin-right: 100px; border: 3 px solid black; border-radius: 10px; margin-left: 0px">
                         <a href="ContactUs.aspx" style="text-decoration: solid; color: white; border: 3 px solid black; border-radius: 10px; font-size: medium"><b>ContactUs</b></a>                            <%--<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/LoginPage.aspx" Font-Bold="True" ForeColor="White">Home</asp:HyperLink>--%>                       
                     </li>



                     <li style="margin-right: 0px; border: 3 px solid black; border-radius: 10px">
                         <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Orientation="Horizontal">
                             <Items>
                                 <asp:MenuItem Text="Account" Value="Account">
                                     <asp:MenuItem Text="LogOut" Value="LogOut" NavigateUrl="~/LoginPage.aspx"></asp:MenuItem>
                                     <asp:MenuItem Text="SignIn" Value="SignIn" NavigateUrl="~/SignInPage.aspx"></asp:MenuItem>
                                 </asp:MenuItem>
                                 <asp:MenuItem></asp:MenuItem>
                             </Items>
                         </asp:Menu>
                         <%--<asp:ImageButton ID="ImageButton2" runat="server" Height="36px" ImageUrl="~/images/cart.png" Width="52px"  />--%>
                     </li>

                     <a href="#" style="margin-right: 60px; margin-left: 80px">
                         <asp:Image ID="Image2" runat="server" Height="39px" ImageUrl="~/images/cart.png" Width="55px" />
                     </a>
                     <div class="navbar-right" style="margin-right: 10px">
                         <input type="text" class="search-bar" placeholder="Search...">
                     </div>

                 </ul>
             </div>
     </nav>

     </div>
            <%-- main --%>
            <div style="border: 1px solid black; width: 100%; height: 550px; float: left; background-color: azure">
    <div style="width: 450px; height: 541px; margin-top: 0px; margin-left: 2%; float: left;">
        <h2 style="color: lightgreen; margin: 50px; font-size: 40px"><b>BOOKHOUSE</b></h2>
        <p style="color: black; margin: 50px; height: 30px; font-size: 30px; width: 386px;"><b>ABOUT OUR BOOKSTORE</b></p>
        <p style="border-style: dotted;background-color:floralwhite; border-color: inherit; border-width: 1px; color: black; margin: 50px; height: 261px; font-size: 20px; border-radius:40px; width: 374px;">We're more than just a bookstore; we're a haven for book lovers. Our shelves are filled with worlds waiting to be explored, characters to be loved, and stories to inspire. Whether you're a seasoned reader or just beginning your literary journey, we're here to help you find your next favorite book. Come discover the magic of reading with us<br /><br /> <asp:Button ID="btn1" runat="server" Text="EXPLORE NOW" BackColor="#99FF99" BorderStyle="Solid" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="Black" Height="43px" Style="margin-left: 0px" Width="221px" OnClick="btn1_Click" /></p>

      
     
        
    </div>
    <div style="border: 1 px solid black; width: 750px; height: 400px; margin-top: 70px; margin-left: 3%; float: left;">
        <asp:Image ID="Image1" runat="server" Height="388px" ImageUrl="~/images/about-img.png" Width="643px" Style="margin-bottom: 0px; margin-top: 18px;" />

    </div>
</div>
        </center>
    </form>
</body>
</html>
