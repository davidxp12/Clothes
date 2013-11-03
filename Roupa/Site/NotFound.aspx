<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NotFound.aspx.cs" Inherits="Roupa.Site.NotFound" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 318px;
            height: 233px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <img alt="NotFound" class="style1" src="../Imagens/404.jpg" /></p>
  <asp:Button runat="server" OnClick="btn_VoltarNotFound" Text="Voltar Pagina Inicial" />
</asp:Content>
