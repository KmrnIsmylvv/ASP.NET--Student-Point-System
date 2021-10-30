<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="TelebeQiymetSistemi.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="Form1" runat="server">

        <div class="form-group">
             <div>
                <asp:Label for="txtDersID" runat="server">Dərs ID</asp:Label>
                <asp:TextBox ID="txtDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           
            <div>
                <asp:Label for="txtDersAd" runat="server">Dərs Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           
        </div>
        <asp:Button runat="server" Text="Güncəllə" CssClass="btn btn-primary" ID="btnGuncelle" OnClick="btnGuncelle_Click" />

    </form>
</asp:Content>
