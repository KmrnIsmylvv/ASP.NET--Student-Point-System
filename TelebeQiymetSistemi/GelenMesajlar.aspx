<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="TelebeQiymetSistemi.GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">GÖNDƏRƏN</th>
                <th scope="col">BAŞLIQ</th>
                <th scope="col">MƏZMUN</th>

            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server"> 
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("MESAJID") %></td>
                        <td><%# Eval("GONDEREN") %></td>
                        <td><%# Eval("BASLIQ") %></td>
                        <td><%# Eval("MEZMUN") %></td>
<%--                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "BildirisSil.aspx?BILDIRISID="+Eval("BILDIRISID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "BildirisGuncelle.aspx?BILDIRISID="+Eval("BILDIRISID")%>' runat="server" CssClass="btn btn-success">GÜNCƏLLƏ</asp:HyperLink>
                        </td>--%>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>


</asp:Content>
