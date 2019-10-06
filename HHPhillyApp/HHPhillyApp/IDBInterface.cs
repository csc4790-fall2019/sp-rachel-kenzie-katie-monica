using System;
using SQLite.Net;

namespace HHPhillyApp
{
    public interface IDBInterface
    {
        SQLiteConnection CreateConnection();
    }
}
