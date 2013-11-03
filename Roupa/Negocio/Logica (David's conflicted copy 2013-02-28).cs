using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Roupa.Entidades;
using System.Data.SqlClient;

namespace Roupa.Negocio
{
    public class Logica
    {

        public string StringConexao()
        {
            // return @"Data Souce=localhost\(local);Initial Catalog=Roupa;Trusted_Connection=Yes;";
            return @"Data Source=(DAVID\SQLEXPRESS);Initial Catalog=Roupa;Trusted_Connection=Yes;";
        }

        #region Material (ADO.NET)

        public List<Material> MaterialListar()
        {
            var materiais = new List<Material>();

            using (var conexao = new SqlConnection(StringConexao()))
            {
                string query = "SELECT * FROM Material";

                var command = new SqlCommand(query, conexao);

                conexao.Open();

                SqlDataReader resultado = command.ExecuteReader();

                if (resultado == null) return materiais;

                while (resultado.Read())
                {
                    var e = new Material()
                    {
                        //Convert.ToInt32(resultado["IdEditora"]) : 0,
                        idMaterial = resultado["idMaterial"] != null ? Guid.Parse(resultado["idMaterial"].ToString()) : Guid.Empty,
                        material = resultado["Material"].ToString(),
                        descricao = resultado["Descricao"].ToString()
                    };
                    materiais.Add(e);
                }
                conexao.Close();
            }
            return materiais;
        }

        public bool MaterialAtualizar(Material material)
        {

            var sucesso = false;
            using (SqlConnection conexao = new SqlConnection(StringConexao()))
            {
                // var query = @"UPDATE Material SET Material='"+material.material +",'Descricao='"+material.descricao+"' WHERE IdMaterial='"+material.idMaterial+"'";
                var query = @"UPDATE Material SET Material='" + material.material + "',Descricao='" + material.descricao + "' WHERE IdMaterial='" + material.idMaterial + "'";
                var command = new SqlCommand(query, conexao);
                conexao.Open();
                /*  command.Parameters.Add(new SqlParameter("@idMaterial", material.idMaterial));
                    command.Parameters.Add(new SqlParameter("@Material", material.material));
                    command.Parameters.Add(new SqlParameter("@Descricao", material.descricao));
                 */
                sucesso = (command.ExecuteNonQuery() > 0);
                conexao.Close();


            };
            return sucesso;
        }
        public bool MarterialAdicionar(Material material)
        {
            var sucesso = false;
            using (SqlConnection conexao = new SqlConnection(StringConexao()))
            {
                var query = @"INSERT INTO Material (Material,Descricao) VALUES ('" + material.material + "','" + material.descricao + "')";

                var command = new SqlCommand(query, conexao);
                //  command.Parameters.AddWithValue("@Material", material.material);
                conexao.Open();
                sucesso = (command.ExecuteNonQuery() > 0);
                conexao.Close();
            }
            return sucesso;

        }
        public bool MateriaExcluir(Guid idMaterial)
        {
            var sucesso = false;
            using (var conexao = new SqlConnection(StringConexao()))
            {
                // implementar um método que verifique se existe relacionamento com esse ID.
                String QueryDelete = "DELETE FROM Material WHERE idMaterial=@idMaterial";
                var command = new SqlCommand(QueryDelete, conexao);
                conexao.Open();
                command.Parameters.Add(new SqlParameter("idMaterial", idMaterial));

                sucesso = (command.ExecuteNonQuery() > 0);
                conexao.Close();
                return sucesso;
            };
        }
        public Material MaterialGet(Guid idMaterial)
        {

            using (var conexao = new SqlConnection(StringConexao()))
            {
                string query = "SELECT * FROM Material WHERE idMaterial=@idMaterial";

                var command = new SqlCommand(query, conexao);

                conexao.Open();
                command.Parameters.Add(new SqlParameter("idMaterial", idMaterial));
                //executa comando
                SqlDataReader resultado = command.ExecuteReader();

                if (resultado == null) return null;

                resultado.Read();
                var material = new Material()
                {
                    idMaterial = resultado["idMaterial"] != null ? Guid.Parse(resultado["idMaterial"].ToString()) : Guid.Empty,
                    material = resultado["Material"].ToString(),
                    descricao = resultado["descricao"].ToString()

                };
                conexao.Close();
                return material;
            }
        }

        #endregion
        
        #region Acessorio (Lync To SQL)
        public bool AcessorioAdicionar(Lync.Acessorio Acessorio)
        {
            bool sucesso = false;

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                Acessorio.IdAcessorio = Guid.NewGuid();
                db.Acessorios.InsertOnSubmit(Acessorio);
                db.SubmitChanges();

                sucesso = true;
          
            }
            return sucesso;
        }
        public List<Lync.Acessorio> AcessorioListar()
        {
            var acessorio = new List<Lync.Acessorio>();

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                acessorio = (from e in db.Acessorios
                             select e).ToList();
            }
            return acessorio;
        }
        public bool AcessorioAtualizar(Acessorio tipo)
        {
            bool sucesso = false;

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                var acessorio = (from c in db.Acessorios
                                 where c.IdAcessorio.Equals(tipo.acessorio)
                                 select c).Single();

                acessorio.Nome = tipo.nome;
                acessorio.PrecoParcelado = tipo.parcelas;
                acessorio.Descricao = tipo.descricao;
                acessorio.Preco = Double.Parse(tipo.preco.ToString());

                try
                {
                    db.SubmitChanges();
                    sucesso = true;
                }
                catch (Exception e)
                {
                    sucesso = false;
                    throw e;
                }
            }

             return sucesso;
        }
        public bool AcessorioExcluir(Guid idAcessorio)
        { 
              bool sucesso=false;

            using(NorthwindDataContext db= new NorthwindDataContext())
            {
                 //excluir o item primeiro
                //var itemAcessorio=()
               var acessorio= (from c in db.Acessorios
                           where c.IdAcessorio.Equals(idAcessorio)
                               select c).FirstOrDefault();
                //adicionando o objeto para excluir no DataContext
                db.Acessorios.DeleteOnSubmit(acessorio);
                ///envia alterações pro bd
                try
                {
                    db.SubmitChanges();
                    sucesso = true;
                }
                catch (Exception e)
                {
                    sucesso = false;
                    throw e;
                } 
            }
            return sucesso;
        }
        public Lync.Acessorio AcessorioGet(Guid IdAcessorio)
        { 
           //  var acessorio = new List<Lync.Acessorio>();

            using (NorthwindDataContext db = new NorthwindDataContext())
            { 
                return (from c in db.Acessorios
                           where c.IdAcessorio == IdAcessorio
                           select c).FirstOrDefault();
                              
            }
           
        }
        
        #endregion

        #region Marca Lync to SQL
        public bool MarcaAtualizar(Marca marca1)
        {
            bool sucesso = false;

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                var marca = (from c in db.Marcas
                             where c.IdMarca.Equals(marca1.idMarca)
                             select c).Single();
                marca.Marca1 = marca1.marca;

                try
                {
                    db.SubmitChanges();
                    sucesso = true;
                }
                catch (Exception e )
                {
                    sucesso = false;
                    throw e;
                }
            }
            return sucesso;
        }
        public Lync.Marca MarcaGet(Guid IdMarca)
        {
            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                return (from c in db.Marcas
                        where c.IdMarca == IdMarca
                        select c).FirstOrDefault();
            }
        }
        public List<Lync.Marca> MarcaLista()
        {
            var marcas = new List<Lync.Marca>();

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                marcas = (from e in db.Marcas
                          select e).ToList();
            }
            return marcas;
        }

        public bool MarcaAdicionar(Lync.Marca marca)
        {
            bool sucesso = false;

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                marca.IdMarca = Guid.NewGuid();
                db.Marcas.InsertOnSubmit(marca);
                db.SubmitChanges();

                sucesso = true;
            }
            return sucesso;
        }

        public bool MarcaExcluir(Guid IdMarca)
        {
            bool sucesso = false;

            using (NorthwindDataContext db = new NorthwindDataContext())
            {
                //excluir o item primeiro
                //var itemAcessorio=()
                var marca = (from c in db.Marcas
                                 where c.IdMarca.Equals(IdMarca)
                                 select c).FirstOrDefault();
                //adicionando o objeto para excluir no DataContext
                db.Marcas.DeleteOnSubmit(marca);
                ///envia alterações pro bd
                try
                {
                    db.SubmitChanges();
                    sucesso = true;
                }
                catch (Exception e)
                {
                    sucesso = false;
                    throw e;
                }
            }
            return sucesso;
        }
        #endregion
    }
}