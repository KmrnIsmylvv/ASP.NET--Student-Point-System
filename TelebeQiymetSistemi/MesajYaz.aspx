<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="MesajYaz.aspx.cs" Inherits="TelebeQiymetSistemi.MesajYaz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtGonderen" runat="server">Göndərən</asp:Label>
                  <asp:TextBox ID="txtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="txtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtBasliq" runat="server">Başlıq</asp:Label>
                <asp:TextBox ID="txtBasliq" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="txtaMezmun" runat="server">Məzmun</asp:Label>
                <textarea id="txtaMezmun" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
        </div>
        <asp:Button runat="server" Text="Göndər" CssClass="btn btn-primary" ID="btnGonder" OnClick="btnGonder_Click" />
    </form>

</asp:Content>
