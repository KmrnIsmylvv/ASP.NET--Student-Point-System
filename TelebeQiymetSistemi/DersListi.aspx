<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="DersListi.aspx.cs" Inherits="TelebeQiymetSistemi.DersListi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">AD</th>
                <th scope="col">ƏMƏLİYYATLAR</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("DERSID") %></td>
                        <td><%# Eval("DERSAD") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "DersSil.aspx?DERSID="+Eval("DERSID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "DersGuncelle.aspx?DERSID="+Eval("DERSID")%>'   runat="server" CssClass="btn btn-success">GÜNCƏLLƏ</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/DersElaveEt.aspx" runat="server" CssClass="btn btn-primary">DƏRS ƏLAVƏ ET</asp:HyperLink>



</asp:Content>
