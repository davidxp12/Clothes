<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Material.aspx.cs" Inherits="Roupa.Site.Material" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-family: "Bauhaus 93";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
     <span class="style1">Cadastro de Material</span>
     <br/>
    <br/>
     <table>
        <tr>
            <td>
                <asp:Label runat="server" Text="Material: "></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNome" ErrorMessage="Nome é obrigatorio!" 
                    Display="None"></asp:RequiredFieldValidator>--%>
            </td>
            <td>
                <asp:Label runat="server" Text="Descrição: "></asp:Label>
                <asp:TextBox ID="txtDescricao" runat="server" Height="58px" Width="376px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtDescricao" Display="Dynamic" 
                    ErrorMessage="A descrição é obrigatório." SetFocusOnError="True">*</asp:RequiredFieldValidator>--%>
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>
            </td>
        </tr>
     </table>
  <%--  <asp:ValidationSummary ID="ValidationSummary1" runat="server" />--%>
    <asp:GridView ID="grdMateriais" runat="server" AutoGenerateColumns="False" 
        Height="98px" onrowcommand="Gridiew1_RowCommand" Width="358px" 
        style="margin-left: 13px" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical">
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
            <%-- <asp:BoundField DataField="idMaterial" HeaderText="Código" />--%>
             <asp:BoundField DataField="Material" HeaderText="Material" />
             <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
             <asp:TemplateField>
             <ItemTemplate>
                <asp:Button runat="server" CommandArgument='<%# Eval("idMaterial") %>' CommandName="cmdEditar" Text="Editar"/>
                <asp:Button runat="server" CommandArgument='<%# Eval("idMaterial") %>' CommandName="cmdExcluir" Text="Excluir"/>
             </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="DarkBlue" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
       </asp:GridView>
       <table style="width:100%;">
           <tr>
               <td>
                   &nbsp;</td>
               <td>
               </td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
    </table>
       </br>
       <asp:Label ID="lblListar" runat="server" Text="" Font-Color="red"></asp:Label>
       
</asp:Content>
