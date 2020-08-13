using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Data.SqlClient;

namespace WebKakeibo01
{
    public partial class _Register : Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Null判定。Nullがあれば登録しない。
            if (TextBox1.Text == "")
            {
                Label1.Text = "　　⚠「いつ」欄が未入力です。";
            }
            else if (TextBox2.Text == "")
            {
                Label1.Text = "　　⚠「どこで」欄が未入力です。";
            }
            else if (TextBox3.Text == "")
            {
                Label1.Text = "　　⚠「なにを」欄が未入力です。";
            }
            else if (TextBox4.Text == "")
            {
                Label1.Text = "　　⚠「いくら」欄が未入力です。";
            }
            else
            {
            //TextBox1～4の値を取得し、SQL文を生成。それを変数「query」に格納
            var query = String.Format("INSERT INTO [dbo].[Employees] ([Days], [Shop], [Thing], [Price]) VALUES (N'{0}',N'{1}',N'{2}',{3})", TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);

            //接続先データベースの指定
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\moril\source\repos\WebKakeibo01\App_Data\Database1.mdf;Integrated Security=True";

            try
            {
            //上記のデータベースに接続
                con.Open();
                using (var transaction = con.BeginTransaction())
                using (var command = new SqlCommand() { Connection = con, Transaction = transaction })
                {
                    try
                    {
                        // コマンドをセット
                        command.CommandText = query;
                        // コマンドを実行
                        command.ExecuteNonQuery();
                        // コミット
                        transaction.Commit();
                    }
                    catch
                    {
                        // ロールバック
                        transaction.Rollback();
                        throw;
                    }
                }
            }
            
            catch (Exception exception)
                    {
                        Console.WriteLine(exception.Message);
                        throw;
            }

            finally
            {
                //接続の解除
                con.Close();
                Label1.Text = "　　登録完了しました！";
            }
            }
            }
        }
    }