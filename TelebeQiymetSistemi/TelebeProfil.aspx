<%@ Page Title="" Language="C#" MasterPageFile="~/Telebe.Master" AutoEventWireup="true" CodeBehind="TelebeProfil.aspx.cs" Inherits="TelebeQiymetSistemi.TelebeDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
             

            <div>
                <asp:TextBox ID="txtNomre" runat="server" CssClass="form-control" Enabled="False">Nömrə</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control" Enabled="False">Ad, Soyad</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtPoctUnvani" runat="server" CssClass="form-control" Enabled="False">Poçt Ünvanı</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" Enabled="False">Şifrə</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="txtCinsiyyet" runat="server" CssClass="form-control" Enabled="False">Cinsiyyət</asp:TextBox>
            </div>
            <br />
        </div>
    </form>

</asp:Content>
