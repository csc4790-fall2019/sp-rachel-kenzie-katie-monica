using System;
using HHPhillyApp.Droid;
using System.IO;
using SQLite.Net;
using Xamarin.Forms;

[assembly: Dependency(typeof(SQLiteAndroid))]

namespace HHPhillyApp.Droid
     {
    public class SQLiteAndroid : ISQLite
    {
        public SQLiteAndroid()
        {
        }

        #region ISQLite implementation
        [Obsolete]
        public SQLite.Net.SQLiteConnection GetConnection()
        {
            var sqliteFilename = "HHPhillyDB";
            string documentsPath = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal); // Documents folder
            var path = Path.Combine(documentsPath, sqliteFilename);

            // This is where we copy in the prepopulated database
            Console.WriteLine(path);
            if (!File.Exists(path))
            {

                var s = Forms.Context.Assets.Open(sqliteFilename);  // RESOURCE NAME ###

                // create a write stream
                FileStream writeStream = new FileStream(path, FileMode.OpenOrCreate, FileAccess.Write);
                // write to the stream
                ReadWriteStream(s, writeStream);
            }

            var plat = new SQLite.Net.Platform.XamarinAndroid.SQLitePlatformAndroid();
            var conn = new SQLite.Net.SQLiteConnection(plat, path);

            // Return the database connection 
            return conn;
        }
        #endregion

        void ReadWriteStream(Stream readStream, Stream writeStream)
        {
            int Length = 256;
            Byte[] buffer = new Byte[Length];
            int bytesRead = readStream.Read(buffer, 0, Length);
            while (bytesRead >= 0)
            {
                writeStream.Write(buffer, 0, bytesRead);
                bytesRead = readStream.Read(buffer, 0, Length);
            }
            readStream.Close();
            writeStream.Close();
        }
    }
}
