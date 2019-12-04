using SQLite.Net;

namespace HHPhillyApp
{
    public interface ISQLite
    {
        SQLite.Net.SQLiteConnection GetConnection();
       
    }
}
