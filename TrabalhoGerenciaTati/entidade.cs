using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TrabalhoGerenciaTati
{
    public class entidade  
    {

        static void Main(string[] args) 
        {
            testInsert();    
        }
        
        protected void testInsert()
        {
            using (BancoTrabEntities1 context = new BancoTrabEntities1)
            {
                Evento ev = new Evento();

                // fazendo o insert

                ev.evento1 = "Show do Iron Maiden";

            }
        }
    }
}