<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="load2.aspx.cs" Inherits="LoginForm.load2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
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
    </form>
</body>
</html>
