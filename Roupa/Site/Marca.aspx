<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Marca.aspx.cs" Inherits="Roupa.Site.Marca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .style1
    {
        font-family: "Bauhaus 93";
    }
    .style2
    {
        width: 371px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="style1">Cadastro de Marcas </span>
    <br />  
    <table style="width:100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;Marcas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxMarca" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
            <asp:Button runat="server" OnClick="btnSalvarMarca" Text="Salvar" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                
            </td>
            <td>
                
                &nbsp;</td>
        </tr>
    </table>

    <asp:GridView ID="grdMarcas" runat="server" AutoGenerateColumns="False" 
        Width="391px" Height="69px" onrowcommand="GridView1_RowCommand" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
         <%--   <asp:BoundField AccessibleHeaderText="Código" DataField="IdMarca" 
                HeaderText="Código" />--%>
            <asp:BoundField AccessibleHeaderText="Marca" DataField="Marca1" 
                HeaderText="Marca" />
            <asp:TemplateField>
            <ItemTemplate>
                <asp:Button runat="server" CommandArgument='<%# Eval("idMarca") %>' CommandName="cmdEditar" Text="Editar" />
                <asp:Button runat="server" CommandArgument='<%# Eval ("IdMarca") %>' CommandName="cmdExcluir" Text="Excluir" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Blue" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Blue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
   
</asp:Content>
