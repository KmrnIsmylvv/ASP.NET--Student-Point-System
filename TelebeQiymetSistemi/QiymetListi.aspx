<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="QiymetListi.aspx.cs" Inherits="TelebeQiymetSistemi.QiymetListi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th scope="col">TƏLƏBƏ ID</th>
                <%--<th scope="col">AD, SOYAD</th>--%>
                <th scope="col">DƏRS AD</th>
                <th scope="col">İMTAHAN 1</th>
                <th scope="col">İMTAHAN 2</th>
                <th scope="col">İMTAHAN 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">HAL</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("TELEBEID") %></td>
                        <td><%# Eval("DERSAD") %></td>
                        <td><%# Eval("IMT1") %></td>
                        <td><%# Eval("IMT2") %></td>
                        <td><%# Eval("IMT3") %></td>
                        <td><%# Eval("ORTALAMA") %></td>
                        <td><%# Eval("HAL") %></td>
                         <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "QiymetGuncelle.aspx?QIYMETID="+Eval("QIYMETID") %>'  runat="server" CssClass="btn btn-success">GÜNCƏLLƏ</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
