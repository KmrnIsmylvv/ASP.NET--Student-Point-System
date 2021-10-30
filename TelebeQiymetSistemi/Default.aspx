<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TelebeQiymetSistemi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NÖMRƏ</th>
                <th scope="col">AD</th>
                <th scope="col">SOYAD</th>
                <th scope="col">TELEFON</th>
                <th scope="col">POÇT ÜNVANI</th>
                <th scope="col">ŞİFRƏ</th>
                <th scope="col">ƏMƏLİYYATLAR</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("TLBID") %></td>
                        <td><%# Eval("TLBNOMRE") %></td>
                        <td><%# Eval("TLBAD") %></td>
                        <td><%# Eval("TLBSOYAD") %></td>
                        <td><%# Eval("TLBTELEFON") %></td>
                        <td><%# Eval("TLBPOCTUNVANI") %></td>
                        <td><%# Eval("TLBSIFRE") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/TelebeSil.aspx?TLBID="+Eval("TLBID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/TelebeGuncelle.aspx?TLBID="+Eval("TLBID")%>' runat="server" CssClass="btn btn-success">GÜNCƏLLƏ</asp:HyperLink>
                        </td>


                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>


</asp:Content>
<%--<th scope="row">1</th>--%>
