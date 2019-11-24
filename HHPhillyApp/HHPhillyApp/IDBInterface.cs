using SQLite.Net;

namespace HHPhillyApp
{
    public interface ISQLite
    {
        SQLiteConnection GetConnection();
    }
}
