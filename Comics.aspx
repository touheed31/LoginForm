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
            <h2 style="background-color: teal; color: white; border: 2px solid black; border-radius: 10px"><i><b>COMIC BOOKS</b></i></h2>
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="bs1" runat="server" ImageUrl="~/images/Comic1.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl1" runat="server" Text="Cat Kid Comic <br>
Dav Pilkey"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl2" runat="server" Text="₹890"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn1" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs2" runat="server" ImageUrl="~/images/Comic2.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl3" runat="server" Text="The Adventure of Tintin Volume <br>
A.U Herge"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl4" runat="server" Text="₹780"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn2" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs3" runat="server" ImageUrl="~/images/Comic3.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl5" runat="server" Text="The Adventure of Captain Underpants <br>
Dav Pilkey"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl6" runat="server" Text="₹390"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="btn3" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="bs4" runat="server" ImageUrl="~/images/Comic4.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="lbl7" runat="server" Text="Pokemon:The Bolt Badge <br>
Simcha Whitehill"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="lbl8" runat="server" Text="₹120"></asp:Label>
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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Comic5.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label1" runat="server" Text="The Red Sea Sharks <br>
A.U Herge"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label2" runat="server" Text="₹890"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button1" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Comic6.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label3" runat="server" Text="Amazing Spiderman <br>
Steve Ditko"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label4" runat="server" Text="₹890"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button2" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Comic7.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label5" runat="server" Text="Batman:Earth One <br>
Gary Frank"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label6" runat="server" Text="₹2180"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button3" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Comic8.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label7" runat="server" Text="Blue Lock 2 <br>
Yusuke Nomura"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label8" runat="server" Text="₹730"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button4" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>
            <%-- 3 --%>
                             <section class="products" style="background-color: azure">
           
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Comic9.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label9" runat="server" Text="Percy Jackson <br>
Rick Riordon"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label10" runat="server" Text="₹550"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button5" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Comic10.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label11" runat="server" Text="Gotham Central Omnibus <br>
Michael Lark"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label12" runat="server" Text="₹5670"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button6" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Comic11.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label13" runat="server" Text="Spidey And His Amazing <br>
Marvel Press"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label14" runat="server" Text="₹380"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button7" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/images/Comic12.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label15" runat="server" Text="Asterix And The Golden Sickle <br>
Rene Goscinny"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label16" runat="server" Text="₹730"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button8" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>

            <%-- 4 --%>
                             <section class="products" style="background-color: azure">
           
            <div class="all-products">
                <div class="product">
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Comic13.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label17" runat="server" Text="Flashpoint <br>
Andy Kubert"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label18" runat="server" Text="₹920"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button9" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Comic14.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label19" runat="server" Text="Batman:The Court Of Owle <br>
reg Capullo"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label20" runat="server" Text="₹690"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button10" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/images/Comic15.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label21" runat="server" Text="The Race Against Time <br>
Geronimo Stilton"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label22" runat="server" Text="₹430"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button11" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
                <div class="product">
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/images/Comic16.jpg" />
                    <div class="product-info">
                        <h4 class="product-title">
                            <asp:Label ID="Label23" runat="server" Text="Spider-Man:Kraven's Last Hunt  <br>
J.M DeMatteis"></asp:Label>
                        </h4>
                        <p class="product-price">
                            <asp:Label ID="Label24" runat="server" Text="₹820"></asp:Label>
                        </p>
                        <a class="product-btn" href="#">
                            <asp:Button ID="Button12" runat="server" Text="Buy Now" BackColor="#2C3E50" ForeColor="White" /></a>

                    </div>
                </div>
            </div>
        </section>
        </center>
    </form>
</body>
</html>
