<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="LoginForm.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>

            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                    <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl="~/images/book1.jpg" Width="158px" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="BOOK1"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="1000rs"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" />
                </ItemTemplate>
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDBConnectionString2 %>" ProviderName="<%$ ConnectionStrings:myDBConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [LoginInfo]"></asp:SqlDataSource>


        </center>
    </form>
</body>
</html>
