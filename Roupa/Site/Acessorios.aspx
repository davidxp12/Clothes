<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Acessorios.aspx.cs" Inherits="Roupa.Site.Acessorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <span>Cadastro de Material </span>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" Width="55px" ImageUrl="~/Imagens/dafiti.png" />
    <br />
    <br />
    <table>
        <tr>
            <td>
                <asp:Label runat="server" Text="Acessorio:"></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label runat="server" Text="Descrição :"></asp:Label>
                <asp:TextBox ID="txtDescricao" runat="server" Height="102px" Width="263px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" Text="Preço :"></asp:Label>
                <asp:TextBox runat="server" ID="txtPreco" Width="67px"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Parcelas : " runat="server"></asp:Label>
                <asp:DropDownList runat="server" ID="DropDownListParcelas" Width="99px" Height="20px">
                </asp:DropDownList>
                </tb>
                <td>
                    <asp:Button runat="server" OnClick="btn_salvar" Text="Salvar" />
                </td>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblListar" Text=""></asp:Label>
                    </td>
                </tr>
        </tr>
    </table>
    <br />
    <asp:GridView ID="grdacessorios" runat="server" AutoGenerateColumns="False" OnRowCommand="grdacessorios_RowCommand"
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
        CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
            <asp:BoundField DataField="Parcelas" HeaderText="Parcelas" />
            <asp:BoundField DataField="Preco" HeaderText="Preço" />
            <asp:TemplateField>
                <ItemTemplate>
                    <%--<asp:button runat="server" commandargument='<%# eval("idacessorio") %>' commandname="cmdeditar"
                        text="editar" />--%>
                    <asp:ImageButton ID="imagebutton1" CommandArgument='<%# Eval("IdAcessorio") %>' runat="server"
                        CommandName="cmdEditar" Height="16px" Width="55px" ImageUrl="~/Imagens/dafiti.png" />
                    <asp:Button runat="server" CommandArgument='<%# Eval("IdAcessorio") %>' CommandName="cmdExcluir"
                        Text="excluir" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="DarkBlue" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </table>
</asp:Content>
