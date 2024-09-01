<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LoginForm.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        margin: 0;
        padding: 0;
        background: #f4f4f4;
    }

    header {
        background: #008080; /* Teal color */
        color: #fff;
        padding: 20px 0;
        text-align: center;
    }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

    .container {
        width: 67%;
        margin: auto;
        overflow: hidden;
    }

    .main-content {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        margin-top: -40px; /* Overlap header with content */
        position: relative;
        z-index: 1;
        margin-top: 0px;
        top: -9px;
        left: -51px;
        margin-left: 20%;
    }

    .contact-form {
        display: flex;
        flex-direction: column;
    }

        .contact-form input, .contact-form textarea {
            margin-bottom: 15px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .contact-form button {
            padding: 15px;
            background: #008080; /* Teal color */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

            .contact-form button:hover {
                background: #005757; /* Darker teal for hover effect */
            }

    .contact-info {
        margin: 20px 0;
    }

        .contact-info p {
            margin: 10px 0;
        }

        .contact-info a {
            color: #008080; /* Teal color */
            text-decoration: none;
        }

            .contact-info a:hover {
                text-decoration: underline;
            }

    .social-links a {
        display: inline-block;
        margin-right: 15px;
        text-decoration: none;
        color: #008080; /* Teal color */
        font-size: 18px;
        transition: color 0.3s ease;
    }

        .social-links a:hover {
            color: #005757; /* Darker teal for hover effect */
        }

    footer {
        background: #008080; /* Teal color */
        color: #fff;
        text-align: center;
        padding: 15px 0;
        position: relative;
        bottom: -141px;
        width: 100%;
        margin-top: 0px;
        left: -21px;
    }
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

        <br />
          <br />
          <br />
          <br />
        <%-- Main --%>
        <div class="container main-content" style="margin-left: 33%; width: 35%; height: 690px;margin-bottom:70px">

            <h2>We'd Love to Hear From You!</h2>
            <br />

            <asp:Label ID="lbl1" runat="server" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Enter Your Name:" Width="142px"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Style="margin-left: 16px" Width="252px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl2" runat="server" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Enter Your Email:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Style="margin-left: 24px" TextMode="Email" Width="254px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl3" runat="server" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Enter Your Subject:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Style="margin-left: 8px" Width="244px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl4" runat="server" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Enter Your Message:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" TextMode="MultiLine" Width="235px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send Message" BackColor="Teal" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="White" Style="margin-left: 0px" Width="469px" />




            <h3>Contact Details: </h3>
            <p>Email: <a href="mailto:info@example.com">BookHouse.com</a></p>
            <p>Phone: <a href="tel:+1234567890">+1234567890</a></p>
            <p>Address: 1234 Street Name, City, Country</p>

            <h3>Follow Us: </h3>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" ImageUrl="~/facebook.png" Style="margin-left: 23px" Width="33px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:ImageButton ID="ImageButton2" runat="server" Height="31px" ImageUrl="~/twitter.jfif" Style="margin-left: 6px" Width="33px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <asp:ImageButton ID="ImageButton3" runat="server" Height="33px" ImageUrl="~/whatsapp.png" Style="margin-left: 0px; margin-bottom: 0px" Width="33px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/instagram.jfif" Width="33px" Style="margin-left: 0px" />
            <br />
            <a href="https://facebook.com" target="_blank">Facebook</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <a href="https://twitter.com" target="_blank">Twitter</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="https://linkedin.com" target="_blank">Whatsapp</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <a href="https://linkedin.com" target="_blank">Instagram</a>
    </div>
    </form>

    <center style="background-color: teal; color: white; width: 100%; height: 26px;">&copy; 2024 BookHouse</center>

</body>
</html>
