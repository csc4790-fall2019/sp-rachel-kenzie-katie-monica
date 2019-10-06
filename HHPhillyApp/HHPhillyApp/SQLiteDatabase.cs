using System;
using SQLite.Net;
using System.Collections.Generic;
using Xamarin.Forms;
using HHPhillyApp;

namespace SQLiteTutorial
{
    public class DatabaseManager
    {
        SQLiteConnection dbConnection;
        public DatabaseManager()
        {
            dbConnection = DependencyService.Get<IDBInterface>().CreateConnection();
        }

        public List<Resources> GetAllResources()
        {
            return dbConnection.Query<Resources>("Select * From [Resources]");
        }

        public int SaveResources(Resources aResource)

        {
            return dbConnection.Insert(aResource);
        }
    }
}