using System;
using System.IO;
using SQLite.Net;
using Xamarin.Forms;
using HHPhillyApp.iOS;

[assembly: Dependency(typeof(SQLiteiPhone))]
namespace HHPhillyApp.iOS
{
    public class SQLiteiPhone : ISQLite
    {
        public SQLiteiPhone()
        {
        }
        #region ISQLite implementation
        public SQLite.Net.SQLiteConnection GetConnection()
        {
            var sqliteFilename = "HHPhillyDB";

            string documentsPath = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            string libraryPath = Path.Combine(documentsPath, "..", "Library");

            var path = Path.Combine(libraryPath, sqliteFilename);

            Console.WriteLine(path);
            if (!File.Exists(path))
            {
                File.Copy(sqliteFilename, path);
            }

            var plat = new SQLite.Net.Platform.XamarinIOS.SQLitePlatformIOS();
            var conn = new SQLite.Net.SQLiteConnection(plat, path);

            // Return the database connection 
            return conn;
        }
        #endregion
    }
}
