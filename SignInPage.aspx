<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="LoginForm.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body style="background-color: whitesmoke">

    <form id="form1" runat="server">
        <div style="border: 1px solid black; width: 100%; height: 100px; background-color: teal">

            <nav style="display: flex; align-items: center; background-color: teal; padding: 10px; height: 78px;">

                <a href="#" style="margin-right: 160px; margin-left: 80px">
                    <img src="images/logo1jpg.jpg" style="border: 3px solid black; border-radius: 10px; height: 150%; width: 90px; margin-top: 5px;" />
                    <%--<asp:Image ID="Image7" runat="server" Height="70px" ImageUrl="~/images/logo1jpg.jpg" Width="84px" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" />--%>
                </a>
                <div style="flex-grow: 8; margin-right: auto; margin-left: 40px; width: 678px;">

                    <h1 style="color: black; font-size: 40px; font-family: Arial; margin-right: auto; width: 552px; border: 3px solid black; border-radius: 10px; background-color: floralwhite"><b>&nbsp;&nbsp;CREATE&nbsp;YOUR&nbsp;&nbsp;ACCOUNT </b></h1>

                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#" style="margin-right: 70px; margin-left: 0px">
                   
                    <img src="images/avatar2.jfif" style="border: 3px solid black; border-radius: 70px; height: 136%; width: 87px;" />                    <%--<asp:Image ID="Image1" runat="server" Height="70px" ImageUrl="~/images/avatar2.jfif" Width="84px" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />--%>
                </a>


            </nav>
        </div>


        <div style="border: 1px solid black; width: 100%; height: 800px; float: left; background-image: url('images/login2.jpg'); background-attachment: W; background-repeat: no-repeat; background-size: cover">
            <div style="background: lightgrey url('images/login2.jpp'); border: 3px solid black; border-radius: 10px; width: 629px; height: 600px; margin-top: 30px; margin-left: 27%; float: left;">
                <center style="width: 668px; margin-left: 0px">

                    <br />
                    <br />
                    <img src="images/ProfileIcon.png" style="border: 3px solid black; border-radius: 35px; height: 155%; width: 87px;" /><br />
                    <br />
                    <br />
                    <asp:Label ID="lbl1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Enter Your Name" BackColor="#000099" ForeColor="White" Width="225px" Font-Size="Larger"></asp:Label>
                    
               &nbsp;&nbsp;
                    
               <asp:TextBox ID="txt1" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" Font-Bold="True" Width="217px" Style="margin-left: 1px"></asp:TextBox>
                   
                    <br />
                    <br />
                    <asp:Label ID="lbl2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Enter Your Email" BackColor="#000099" ForeColor="White" Width="225px" Font-Size="Larger"></asp:Label>
                    
&nbsp;&nbsp;&nbsp;
                    
               <asp:TextBox ID="txt2" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" Font-Bold="True" Width="217px" Style="margin-left: 1px"></asp:TextBox>
                   
                    <br />
                    <br />
                
                    <asp:Label ID="lbl3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Enter Your Phone No" BackColor="#000099" ForeColor="White" Width="245px" Font-Size="Larger"></asp:Label>
                    
               &nbsp;&nbsp;&nbsp;&nbsp;
                    
               <asp:TextBox ID="txt3" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" Font-Bold="True" Width="195px" Style="margin-left: 1px"></asp:TextBox>
                   
                    <br />

                    <br />

                    <asp:Label ID="lbl4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Enter Your City" BackColor="#000099" ForeColor="White" Width="225px" Font-Size="Larger"></asp:Label>
                    
               &nbsp;&nbsp;&nbsp;
                    
               <asp:TextBox ID="txt4" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" Font-Bold="True" Width="217px" Style="margin-left: 1px"></asp:TextBox>
                   
                    <br />
                    <br />
                    <asp:Label ID="lbl5" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Select Your Gender" BackColor="#000099" ForeColor="White" Width="225px" Font-Size="Larger" style="margin-left: 0px"></asp:Label>
                    
               &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddl1" runat="server">
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                        <asp:ListItem>OTHER</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="lbl6" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Text="Enter Your Password" BackColor="#000099" ForeColor="White" Width="225px" Font-Size="Larger"></asp:Label>
                    
               &nbsp;&nbsp;&nbsp;
                    
               <asp:TextBox ID="txt5" runat="server" BorderColor="Black" BorderStyle="Ridge" BorderWidth="3px" Font-Bold="True" Width="217px" Style="margin-left: 1px"></asp:TextBox>
                   
                    <br />
                    <br />

                    <br />
                    <asp:Button ID="btn1" runat="server" BackColor="#000099" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Larger" ForeColor="White"  Text="LOGIN" Width="232px" Height="48px" OnClick="btn1_Click" />

                    <br />
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                        <ProgressTemplate>
                            <asp:Image ID="Image2" runat="server" Height="64px" Width="97px" ImageUrl="~/loading1.gif" />
                        </ProgressTemplate>

                    </asp:UpdateProgress>
                    <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <br />
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <br />
                            <br />
                        </ContentTemplate>

                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btn1" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>







                </center>
            </div>

        </div>
        





    </form>

</body>
</html>
