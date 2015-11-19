using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TrabalhoGerenciaTati
{
    public partial class cadastroUsuario : System.Web.UI.Page
    {
        BancoTrabEntities3 conexao = new BancoTrabEntities3();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btSalvar(Object sender, EventArgs e) {
            Usuario usuario = new Usuario();

            usuario.usuario1 = TxtLogin.Text;
            usuario.senha = TxtSenha.Text;

            conexao.AddToUsuario(usuario);
            conexao.SaveChanges();


        }
    }
}