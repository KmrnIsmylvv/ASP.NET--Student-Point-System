<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="BildirisGuncelle.aspx.cs" Inherits="TelebeQiymetSistemi.BildirisGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtBildirisID" runat="server">ID:</asp:Label>
                <asp:TextBox ID="txtBildirisID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtBildirisBasliq" runat="server">Başlıq:</asp:Label>
                <asp:TextBox ID="txtBildirisBasliq" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtaBildirisMezmun" runat="server">Məzmun:</asp:Label>
                <textarea id="txtaBildirisMezmun" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
        </div>
        <asp:Button runat="server" Text="Güncəllə" CssClass="btn btn-primary" ID="btnGuncelle" OnClick="btnGuncelle_Click" />

    </form>



</asp:Content>
