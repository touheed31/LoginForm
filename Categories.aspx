<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="LoginForm.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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


        <%-- Main --%>
        <div style="border: 1px solid black; width: 100%; height: 600px; float: left; background-color: aliceblue">
            <center>
                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="120px" ImageUrl="~/images/cat1.png" Style="margin-top: 18px" Width="150px" EnableTheming="True" PostBackUrl="~/Textbook.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;TEXTBOOKS&nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 63px; border-radius: 10px; background-color: floralwhite"><i><b>A textbook is a book containing a comprehensive compilation of content in a branch of study with the intention of explaining it.</b></i></p>

                    <br />
                    <br />
                </div>

                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="120px" ImageUrl="~/images/cat2.png" Style="margin-top: 18px" Width="150px" PostBackUrl="~/Sciences.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;SCIENCES&nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 62px; border-radius: 10px; background-color: floralwhite"><i><b>Science books illuminate the wonders of theW world. They explore everything the smallest particles to the vast cosmos.</b></i></p>

                    <br />

                </div>
                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton10" runat="server" Height="120px" ImageUrl="~/images/cat3.png" Style="margin-top: 18px" Width="150px" PostBackUrl="~/History.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;HISTORY&nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 62px; border-radius: 10px; background-color: floralwhite"><i><b>History books explore the past events, people, and societies. They offer  how we arrived at the present and can shape the world.</b></i></p>
                </div>

                <br />


                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="120px" ImageUrl="~/images/cat4.png" Style="margin-top: 18px; margin-left: 14px;" Width="155px" PostBackUrl="~/Biography.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;BIOGRAPHY&nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 63px; border-radius: 10px; background-color: floralwhite"><i><b>Biography books tell the story of a person's life. They explore their experiences, achievements, and impact on the world.</b></i></p>
                    <br />
                </div>
                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton12" runat="server" Height="120px" ImageUrl="~/images/cat5.png" Style="margin-top: 21px" Width="150px" PostBackUrl="~/Adventure.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;ADVENTURE&nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 64px; border-radius: 10px; background-color: floralwhite"><i><b>Adventure books take readers on thrilling journeys filled with excitement, danger, and exploration.W</b></i></p>

                    <br />
                </div>
                <div style="border: 1 px solid black; width: 353px; height: 250px; margin-top: 10px; margin-left: 5%; float: left; border-radius: 10px;">
                    <asp:ImageButton ID="ImageButton13" runat="server" Height="120px" ImageUrl="~/images/cat6.png" Style="margin-top: 18px" Width="150px" PostBackUrl="~/Comics.aspx" />
                    <h1 style="color: black; font-size: 20px; font-family: Arial; margin-right: auto; width: 196px; border: 3px solid black; border-radius: 10px; background-color: floralwhite; margin-left: 87px; margin-top: 10px; height: 23px;"><b><i>&nbsp;&nbsp;COMICS &nbsp;</i></b></h1>
                    <p style="color: black; font-size: 12px; font-family: Arial; margin-right: auto; width: 196px; border: 2px solid black; margin-left: 87px; margin-top: 0px; height: 61px; border-radius: 10px; background-color: floralwhite"><i><b>Comic books blend words and pictures to tell captivating stories. They offer a visual feast for the mind and narrative.</b></i></p>
                    <br />
                </div>

            </center>
        </div>

        
      

    </form>
</body>
</html>
