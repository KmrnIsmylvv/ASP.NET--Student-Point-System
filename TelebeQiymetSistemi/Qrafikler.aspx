<%@ Page Title="" Language="C#" MasterPageFile="~/Muellim.Master" AutoEventWireup="true" CodeBehind="Qrafikler.aspx.cs" Inherits="TelebeQiymetSistemi.Qrafikler" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                
                    <asp:Chart ID="Chart5" margin-left="100px"  runat="server"  Width="445px">
                        <series>
                            <asp:Series Name="Dərslər" Font="Times New Roman, 14.25pt, style=Bold">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
               
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart7" runat="server" Width="445px">
                        <series>
                            <asp:Series ChartType="Pie" Name="Cinsiyyət" Font="Times New Roman, 14.25pt, style=Bold">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart8" runat="server" Width="445px">
                        <series>
                            <asp:Series ChartType="Doughnut" Name="Müəllimlər" Font="Times New Roman, 11.25pt, style=Bold">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
