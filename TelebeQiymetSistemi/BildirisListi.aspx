<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="BildirisListi.aspx.cs" Inherits="TelebeQiymetSistemi.Bildirisler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">BAŞLIQ</th>
                <th scope="col">MƏZMUN</th>
                <th scope="col">MÜƏLLİM</th>
                <th scope="col">ƏMƏLİYYATLAR</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("BILDIRISID") %></td>
                        <td><%# Eval("BILDIRISBASLIQ") %></td>
                        <td><%# Eval("BILDIRISMEZMUN") %></td>
                        <td><%# Eval("BILDIRISMLM") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "BildirisSil.aspx?BILDIRISID="+Eval("BILDIRISID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "BildirisGuncelle.aspx?BILDIRISID="+Eval("BILDIRISID")%>'   runat="server" CssClass="btn btn-success">GÜNCƏLLƏ</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>




</asp:Content>
