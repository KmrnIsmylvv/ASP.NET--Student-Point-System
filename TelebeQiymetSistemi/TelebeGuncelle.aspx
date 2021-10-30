<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="TelebeGuncelle.aspx.cs" Inherits="TelebeQiymetSistemi.TelebeGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtTlbId" runat="server">Tələbə ID:</asp:Label>
                <asp:TextBox ID="txtTlbId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbAd" runat="server">Tələbə Ad:</asp:Label>
                <asp:TextBox ID="txtTlbAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbSoyad" runat="server">Tələbə Soyad:</asp:Label>
                <asp:TextBox ID="txtTlbSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbTelefon" runat="server">Tələbə Telefon:</asp:Label>
                <asp:TextBox ID="txtTlbTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbPoctUnvani" runat="server">Tələbə Poçt Ünvanı:</asp:Label>
                <asp:TextBox ID="txtTlbPoctUnvani" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbSifre" runat="server">Tələbə Şifrə:</asp:Label>
                <asp:TextBox ID="txtTlbSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTlbSekil" runat="server">Tələbə Şəkil:</asp:Label>
                <asp:TextBox ID="txtTlbSekil" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>
        <asp:Button runat="server" Text="Güncəllə" CssClass="btn btn-primary" ID="btnGuncelle" OnClick="btnGuncelle_Click" />

    </form>






</asp:Content>
