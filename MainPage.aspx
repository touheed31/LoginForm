<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LoginForm.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 643px;
        }


        * {
            margin: 0;
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
            width: 400%; 
            animation: 20s slide infinite;
        }

        .slide {
            position: relative;
            width: 25%; 
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


        <%--slider--%>
        <div class="slider">
            <figure>
                <div class="slide">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="505px" ImageUrl="~/slide1.jpg" OnClick="ImageButton1_Click" Width="1305px" />

                </div>
                <div class="slide">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="505px" ImageUrl="~/images/slider2.jpg" OnClick="ImageButton1_Click" Width="1305px" />

                </div>
                <div class="slide">

                    <asp:ImageButton ID="ImageButton7" runat="server" Height="505px" ImageUrl="~/images/slider3.jpg" OnClick="ImageButton1_Click" Width="1305px" />

                </div>
                <div class="slide">

                    <asp:ImageButton ID="ImageButton8" runat="server" Height="505px" ImageUrl="~/images/slider4.jpg" OnClick="ImageButton1_Click" Width="1305px" />


                </div>
            </figure>
        </div>




        <br />
        <br />
        <br />
        <br />

        <%--book1--%>
        <section class="products" style="background-color: azure">
            <h2 style="background-color: teal; color: white; border: 2px solid black; border-radius: 10px"><i><b>BEST SELLERS</b></i></h2>
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="bs1" runat="server" ImageUrl="~/images/BestSeller2.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl1" runat="server" Text="Doglapan <br>
Ashneer Grover"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl2" runat="server" Text="₹360"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn1" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" style="height: 26px" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs2" runat="server" ImageUrl="~/images/BestSeller3.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl3" runat="server" Text="Power of Your Subconscious Mind <br>
Joseph Murphy"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl4" runat="server" Text="₹210"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn2" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs3" runat="server" ImageUrl="~/images/BestSeller4.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl5" runat="server" Text="Rich Dad Poor Dad <br>
Robert T Kiyosaki"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl6" runat="server" Text="₹430"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn3" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs4" runat="server" ImageUrl="~/images/BestSeller5.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl7" runat="server" Text="The Silent Patient <br>
Alex Michaelides"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl8" runat="server" Text="₹290"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn4" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>


        <%--book2 --%>

                <section class="products" style="background-color: azure">
            <h2 style="background-color: teal; color: white; border: 2px solid black; border-radius: 10px"><i><b>NOW TRENDING</b></i></h2>
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="nt1" runat="server" ImageUrl="~/images/Trending1.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl9" runat="server" Text="Jujutsu Kaisen 0 <br>
Gege Akutami"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl10" runat="server" Text="₹630"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn5" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="nt2" runat="server" ImageUrl="~/images/Trending2.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl11" runat="server" Text="Attack on Titan 34 <br>
Hajime Isayama"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl12" runat="server" Text="₹620"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn6" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="nt3" runat="server" ImageUrl="~/images/Trending3.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl13" runat="server" Text="Harry Potter the Philosopher's Stone <br>
J. K. Rowling"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl14" runat="server" Text="₹410"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn7" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="nt4" runat="server" ImageUrl="~/images/Trending4.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl15" runat="server" Text="Relativity <br>
Albert Einstein"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl16" runat="server" Text="₹510"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn8" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>
                      </div>
                </div>
            </div>
        </section>



        
        <%--book3 --%>


                        <section class="products" style="background-color: azure">
            <h2 style="background-color: teal; color: white; border: 2px solid black; border-radius: 10px"><i><b>INTERNAIONAL BEST SELLERS</b></i></h2>
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="ibs1" runat="server" ImageUrl="~/images/International1.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl17" runat="server" Text="The Colt M1911 .45 Automatic Pistol <br>
Jean Huon"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl18" runat="server" Text="₹1690"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn9" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="ibs2" runat="server" ImageUrl="~/images/International2.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl19" runat="server" Text="My Journey <br>
A.P.J. Abdul Kalam"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl20" runat="server" Text="₹1200"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn10" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="ibs3" runat="server" ImageUrl="~/images/International3.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl21" runat="server" Text="Think And Grow Rich <br>
Napoleon Hill"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl22" runat="server" Text="₹1420"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn11" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="ibs4" runat="server" ImageUrl="~/images/International4.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl23" runat="server" Text="Rolex <br>
Kesaharu Imai"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl24" runat="server" Text="₹4600"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn12" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>




    </form>

</body>
</html>
