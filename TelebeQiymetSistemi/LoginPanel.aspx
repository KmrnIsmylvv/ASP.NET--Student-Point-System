<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="TelebeQiymetSistemi.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            height: 727px;
        }
        .auto-style2 {
            height: 790px;
        }
        .newStyle1 {
            font-family: "segoe script";
        }
        .newStyle2 {
            font-family: "segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .newStyle3 {
            font-family: "times New Roman", Times, serif;
        }
        .auto-style3 {
            font-family: "times New Roman", Times, serif;
            text-align: center;
        }
    </style>
    
</head>
<body style="height: 732px">
    <form id="form1" runat="server" class="auto-style2">
        <div style="width: 700px; margin: auto">

            <h2 class="auto-style3"><span class="newStyle2">Tələbə Qiymət Sistemi Giriş Paneli</span></h2>
            <br />
            <br />
            <br />
            <div class="text-center">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl="~/login.png" />
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="txtIstifadeciAdi" runat="server" Font-Bold="True">İstifadəçi Adı</asp:Label>
                <asp:TextBox ID="txtIstifadeciAdi" runat="server" CssClass="auto-style1" Height="35px" Width="695px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="txtSifre" runat="server" Font-Bold="True">Şifrə:</asp:Label>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="auto-style1" Height="35px" Width="695px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Width="700px" Text="Daxil Ol" CssClass="btn btn-primary" OnClick="Button1_Click" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
