<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="QiymetGuncelle.aspx.cs" Inherits="TelebeQiymetSistemi.QiymetGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">

        <div class="form-group">
             <div>
                <asp:Label for="txtDersAd" runat="server">Dərs Ad</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtTelebeID" runat="server">Tələbə ID</asp:Label>
                <asp:TextBox ID="txtTelebeID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtImtahan1" runat="server">İMTAHAN 1</asp:Label>
                <asp:TextBox ID="txtImtahan1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtImtahan2" runat="server">İMTAHAN 2</asp:Label>
                <asp:TextBox ID="txtImtahan2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtImtahan3" runat="server">İMTAHAN 3</asp:Label>
                <asp:TextBox ID="txtImtahan3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOrtalama" runat="server">ORTALAMA</asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtHal" runat="server">HAL</asp:Label>
                <asp:TextBox ID="txtHal" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button runat="server" Text="Hesabla" CssClass="btn btn-toolbar" ID="btnHesabla" OnClick="btnHesabla_Click" />
        <asp:Button runat="server" Text="Güncəllə" CssClass="btn btn-primary" ID="btnGuncelle" OnClick="btnGuncelle_Click" />

    </form>
</asp:Content>
