using MySql.Data.MySqlClient;
using System;

namespace CSharpMySQLConnect
{
    class Program
    {
        // 接続情報
        private static readonly string Server = "localhost";      // ホスト名
        private static readonly int Port = 3306;                  // ポート番号
        private static readonly string Database = "mydb01";        // データベース名
        private static readonly string Uid = "root";              // ユーザ名
        private static readonly string Pwd = "<earth0613>"; // パスワード

        // 接続文字列
        private static readonly string ConnectionString = $"Server={Server}; Port={Port}; Database={Database}; Uid={Uid}; Pwd={Pwd}";

        // バージョン情報取得SQL
        private static readonly string SelectVersion = "SELECT version()";

        static void Main(string[] args)
        {
            try
            {
                // コネクションオブジェクトとコマンドオブジェクトを生成します。
                using (var connection = new MySqlConnection(ConnectionString))
                using (var command = new MySqlCommand())
                {
                    // コネクションをオープンします。
                    connection.Open();

                    // バージョン情報取得SQLを実行します。
                    command.Connection = connection;
                    command.CommandText = SelectVersion;
                    var value = command.ExecuteScalar();
                    var versionNo = value as string;

                    // 取得したバージョン番号を表示します。
                    Console.WriteLine($"バージョン番号={versionNo}");
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

            Console.ReadKey();
        }
    }
}