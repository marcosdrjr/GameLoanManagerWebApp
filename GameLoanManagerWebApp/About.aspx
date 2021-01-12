<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GameLoanManagerWebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Emprestimos.</h2>
    <h3>Listas de empretimso de Jogos.</h3>
    <p>Hora de ter conctrole dos jogos emprestado.</p>

    <table>
        <tr>
            <td>
                <asp:Label ID="lblGames" runat="server" Text="Selecione o jogo:"></asp:Label>
                <asp:RadioButtonList ID="rdbGames" runat="server"></asp:RadioButtonList>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Selecione o Requerinte:"></asp:Label>
                <asp:RadioButtonList ID="rdbIndividuo" runat="server"></asp:RadioButtonList>
            </td>
            <td>
                <asp:Button ID="btnadd" runat="server" Text="Salvar Emprestimo" OnClick="btnadd_Click" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="pnlGrid" runat="server">
        <asp:GridView ID="GridViewLoan" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>
