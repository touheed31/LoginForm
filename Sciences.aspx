<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Textbook.aspx.cs" Inherits="LoginForm.Textbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

            @import url('https://fonts.googleapis.com/css2?family=Merriweather+Sans&display=swap');

    * {
        margin: 0 0 0 27;
        padding: 0;
        box-sizing: border-box;
    }



    h2 {
        text-align: center;
        margin-bottom: 5rem;
        font-size: 4rem;
    }

    .all-products {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-wrap: wrap;
    }

    .product {
        overflow: hidden;
        background: #ffffff;
        color: #21201e;
        text-align: center;
        width: 240px;
        height: 500px;
        padding: 2rem;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        border-radius: 1.2rem;
        margin: 2rem;
    }

        .product .product-title, .product .product-price {
            font-size: 18px;
        }

        .product:hover img {
            scale: 1.1;
        }

        .product:hover {
            box-shadow: 5px 15px 25px #eeeeee;
        }

        .product img {
            height: 200px;
            margin: 1rem;
            transition: all 0.3s;
        }

        .product a:link, .product a:visited {
            color: #ececec;
            display: inline-block;
            text-decoration: none;
            background-color: #2c3e50;
            padding: 1.2rem 3rem;
            border-radius: 1rem;
            margin-top: 1rem;
            font-size: 14px;
            transition: all 0.2s;
        }

        .product a:hover {
            transform: scale(1.1);
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
<body>
    <form id="form1" runat="server">
        
        <div style="border: 1 px solid black; width: 100%; height: 92px; background-color: teal">

            <nav style="display: flex; align-items: center; background-color: teal; padding: 10px;">
                <a href="#" style="margin-right: 100px;">
                    <asp:Image ID="Image13" runat="server" Height="70px" ImageUrl="~/images/logo1jpg.jpg" Width="84px" />
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
                            <asp:Image ID="Image14" runat="server" Height="39px" ImageUrl="~/images/cart.png" Width="55px" />
                        </a>
                        <div class="navbar-right" style="margin-right: 10px">
                            <input type="text" class="search-bar" placeholder="Search...">
                        </div>

                    </ul>
                </div>
        </nav>

        </div>
        <center>
            <%-- 1 --%>
                 <section class="products" style="background-color: azure">
            <h2 style="background-color: teal; color: white; border: 2px solid black; border-radius: 10px"><i><b>SCIENCE BOOKS</b></i></h2>
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="s1" runat="server" ImageUrl="~/images/Science1.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl1" runat="server" Text="Science of Everything<br>
David Pogue"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl2" runat="server" Text="₹2000"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn1" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s2" runat="server" ImageUrl="~/images/Science2.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl3" runat="server" Text="Introduction to Quantum Theory <br>
J.P McEvoy"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl4" runat="server" Text="₹240"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn2" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s3" runat="server" ImageUrl="~/images/Science3.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl5" runat="server" Text="Principle of Scienific Management <br>
Frederick Winslow Taylor"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl6" runat="server" Text="₹420"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn3" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s4" runat="server" ImageUrl="~/images/Science4.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl7" runat="server" Text="Instant Science <br>
Jennifer Crouch"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl8" runat="server" Text="₹960"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn4" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>

            <%-- 2 --%>
                             <section class="products" style="background-color: azure">
         
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="s5" runat="server" ImageUrl="~/images/Science5.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl9" runat="server" Text="Oils Sciences  <br>
Jo Locke"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl10" runat="server" Text="₹950"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn5" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s6" runat="server" ImageUrl="~/images/Science6.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl11" runat="server" Text="Science Matters <br>
James Trefil"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl12" runat="server" Text="₹790"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn6" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s7" runat="server" ImageUrl="~/images/Science7.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl13" runat="server" Text="Science Squad Explains <br>
Roberts Winston"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl14" runat="server" Text="₹530"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn7" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s8" runat="server" ImageUrl="~/images/Science8.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl15" runat="server" Text="Mysteries of the Universe <br>
Peter Altman"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl16" runat="server" Text="₹360"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn8" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>
            <%-- 3 --%>
                             <section class="products" style="background-color: azure">
           
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="s9" runat="server" ImageUrl="~/images/Science9.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label9" runat="server" Text="The Character of Physical Law <br>
Richard P Feynman"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label10" runat="server" Text="₹530"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn9" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s10" runat="server" ImageUrl="~/images/Science10.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label11" runat="server" Text="Structures <br>
J.E Gordon"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label12" runat="server" Text="₹620"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn10" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s11" runat="server" ImageUrl="~/images/Science11.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label13" runat="server" Text="Everyday Amazing<br>
Beatrice"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label14" runat="server" Text="₹520"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn11" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s12" runat="server" ImageUrl="~/images/Science12.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label15" runat="server" Text="Best American Science and Nature <br>
Tim Folger"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label16" runat="server" Text="₹1000"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn12" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>

            <%-- 4 --%>
                             <section class="products" style="background-color: azure">
           
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="s13" runat="server" ImageUrl="~/images/Science13.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label17" runat="server" Text="Scientist as Rebel <br>
Freeman Dyson"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label18" runat="server" Text="₹1200"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn13" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s14" runat="server" ImageUrl="~/images/Science14.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label19" runat="server" Text="The Manga Guide to Physics <br>
Hideo Nitta"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label20" runat="server" Text="₹1050"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn14" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s15" runat="server" ImageUrl="~/images/Science15.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label21" runat="server" Text="The Manga Guide to Calculus <br>
Shin Togami"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label22" runat="server" Text="₹1400"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn15" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="s16" runat="server" ImageUrl="~/images/Science16.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label23" runat="server" Text="The Manga Guide to Electricity<br>
Kazuhiro Fujutaki"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label24" runat="server" Text="₹1300"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn16" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>
        </center>
    </form>
</body>
</html>
