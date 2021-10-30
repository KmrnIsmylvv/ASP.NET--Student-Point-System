<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="BildirisElaveEt.aspx.cs" Inherits="TelebeQiymetSistemi.BildirisElaveEt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Müəllim:</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <div>
                <asp:Label for="txtBildirisBasliq" runat="server">Başlıq:</asp:Label>
                <asp:TextBox ID="txtBildirisBasliq" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtaMezmun" runat="server">Məzmun:</asp:Label>
                <textarea id="txtaMezmun" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
        </div>
          <asp:Button runat="server" Text="Əlavə Et" CssClass="btn btn-primary" ID="btnElaveEt" OnClick="btnElaveEt_Click"  />
    </form>


</asp:Content>
