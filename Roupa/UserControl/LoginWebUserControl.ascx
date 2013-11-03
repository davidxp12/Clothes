<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginWebUserControl.ascx.cs" Inherits="Roupa.NewFolder1.LoginWebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 323px;
    }
</style>

<table style="width: 100%;">
    <tr>
        <td class="style1">
            <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
                BorderPadding="22" BorderStyle="None" BorderWidth="1px" 
                FailureText="Senha invalida. Tente novamente!" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#333333" Height="141px" LoginButtonText="Logar" 
                PasswordLabelText="Senha:" PasswordRequiredErrorMessage="Senha é obrigatoria!" 
                RememberMeText="Lembre-me." UserNameLabelText="Login:" 
                UserNameRequiredErrorMessage="Login é obrigatorio." Width="292px">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

