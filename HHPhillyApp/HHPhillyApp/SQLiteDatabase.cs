using System;
using SQLite.Net;
using System.Collections.Generic;
using Xamarin.Forms;
using HHPhillyApp;
using SQLite;
using System.Threading.Tasks;

namespace HHPhillyApp
{
    public class DatabaseManager
    {
        readonly SQLiteAsyncConnection dbConnection;
        public DatabaseManager(string dbPath)
        {
            dbConnection = new SQLiteAsyncConnection(dbPath);
            dbConnection.CreateTableAsync<Resources>().Wait();
        }

        public Task<List<Resources>> GetItems()
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

    }
}