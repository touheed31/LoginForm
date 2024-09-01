<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LoginForm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 643px;
        }


        * {
            margin: 0 0 0 11;
            padding: 0;
        }

        .slider {
            width: 100%;
            height: 500px;
            overflow: hidden;
        }

        figure {
            position: relative;
            left: 0;
            width: 400%; /* width dikali slide */
            animation: 20s slide infinite;
        }

        .slide {
            position: relative;
            width: 25%; /* width dibagi slide */
            float: left;
        }

            .slide h1 {
                position: absolute;
                font-size: 3em;
                width: 100%;
                text-align: center;
                margin-top: 50px;
                color: white;
                text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
            }

            .slide img {
            }

        @keyframes slide {
            0% {
                left: 0;
            }

            10% {
                left: 0;
            }

            20% {
                left: -100%;
            }

            30% {
                left: -100%;
            }

            40% {
                left: -200%;
            }

            50% {
                left: -200%;
            }

            55% {
                left: -300%;
            }

            65% {
                left: -300%;
            }

            66% {
                left: -200%;
            }

            74% {
                left: -200%;
            }

            75% {
                left: -100%;
            }

            85% {
                left: -100%;
            }

            90% {
                left: 0;
            }

            1000% {
                left: 0;
            }
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
</head>
<body style="background-color: whitesmoke">

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



        <div style="border: 1px solid black; width: 100%; height: 646px; float: left; background-color: azure">
            <div style="border: 1 px solid black; width: 450px; height: 420px; margin-top: 0px; margin-left: 2%; float: left;">
                <h2 style="color: lightgreen; margin: 50px; font-size: 40px">BookHouse</h2>
                <p style="color: black; margin: 50px; height: 67px; font-size: 60px"><b>For All Your Reading Needs</b></p>
                <p style="color: black; margin: 50px; height: 67px; font-size: 60px">&nbsp;</p>
                <p style="color: black; margin: 50px; height: 67px; font-size: 30px">A Home For Bookworms. Get Lose in the Pages.&nbsp;&nbsp; More than just a Bookstore.</p>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
                <asp:Button ID="btn1" runat="server" Text="CLICK TO EXPLORE STORE" BackColor="#99FF99" BorderStyle="Solid" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="Black" Height="38px" Style="margin-left: 0px" Width="336px" OnClick="btn1_Click" />
            </div>
            <div style="border: 1 px solid black; width: 750px; height: 400px; margin-top: 30px; margin-left: 3%; float: left;">
                <asp:Image ID="Image1" runat="server" Height="518px" ImageUrl="~/images/slider-img.png" Width="767px" Style="margin-bottom: 0px; margin-top: 0px;" />

            </div>
        </div>
        <br />
    

        <%-- Footer --%>



        
    </form>



</body>
</html>
