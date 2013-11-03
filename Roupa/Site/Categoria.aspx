<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="Roupa.Site.Categoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <span>Categorias de Roupas</span> 
 <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" Width="55px" ImageUrl="~/Imagens/dafiti.png" />
 <br />
 <br />
 <table>
    <tr>
        <td>
        <asp:Label runat="server" Text="Nome:" ></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtNome" runat="server" Text="" Width="155px"  TextMode="MultiLine"></asp:TextBox> 
        </td>
        <td>
        <asp:Button runat="server" OnClick="btn_salvar" Text="Salvar" />
        </td>
     <br/>
    <br />
    </tr>
 </table>
  <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
        </Columns>
    </asp:GridView>

</asp:Content>
