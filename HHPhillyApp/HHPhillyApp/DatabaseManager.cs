using System;
using SQLite.Net;
using System.Collections.Generic;
using Xamarin.Forms;
using HHPhillyApp;
using SQLite;
using System.Threading.Tasks;
using System.Linq;

namespace HHPhillyApp
{
    public class DatabaseManager
    {
        SQLite.Net.SQLiteConnection dbConnection;

        public DatabaseManager()
        {
            dbConnection = DependencyService.Get<IDBInterface>().GetConnection();
            // dbConnection = new SQLiteAsyncConnection(dbPath);
            //dbConnection.CreateTableAsync<Resources>().Wait();
        }

        public List<Resources> GetAllResources()
        {
            return dbConnection.Query<Resources>("Select * From [Resources]");
        }

        /* public Task<List<Resources>> GetItems()
         {
             return dbConnection.QueryAsync<Resources>("Select * From[Resources]");
         }

         public Task<Resources> GetItemAsync(int id)
         {
             return dbConnection.Table<Resources>().Where(i => i.ID == id).FirstOrDefaultAsync();
         }

         public Task<List<Resources>> GetItemsAsync()
         {
             return dbConnection.QueryAsync<Resources>("Select * From[Resources]");
         }

         public static List<Resources> testing(string dbpath) {
             List<Resources> testing2 = new List<Resources>();

             using (var conn = new SQLite.SQLiteConnection(dbpath)) {
                 testing2 = conn.Table<Resources>().ToList();
             }

             return testing2;
         } */

    }
}