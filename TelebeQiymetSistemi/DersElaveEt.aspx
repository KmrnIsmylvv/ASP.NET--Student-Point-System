<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="DersElaveEt.aspx.cs" Inherits="TelebeQiymetSistemi.DersElaveEt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label for="txtDersAd" runat="server">Dərs Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

        </div>
        <asp:Button runat="server" Text="Əlavə Et" CssClass="btn btn-primary" ID="btnElaveEt" OnClick="btnElaveEt_Click" />
    </form>




</asp:Content>
