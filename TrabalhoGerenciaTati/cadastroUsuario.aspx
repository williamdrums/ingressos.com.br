<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastroUsuario.aspx.cs" Inherits="TrabalhoGerenciaTati.cadastroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:TextBox ID="TxtLogin" runat="server" Text="Login"></asp:TextBox>
         <asp:TextBox ID="TxtSenha" runat="server" Text="Senha" TextMode="MultiLine" />
         <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btSalvar" />
    </div>
    </form>
</body>
</html>
