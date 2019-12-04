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
            string documentsDirectoryPath = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal);
            var path = Path.Combine(documentsDirectoryPath, sqliteFilename);

            // This is where we copy in our pre-created database
            if (!File.Exists(path))
            {
                using (var binaryReader = new BinaryReader(Android.App.Application.Context.Assets.Open(sqliteFilename)))
                //using (var binaryReader = new BinaryReader(Android.App.Application.Context.Resources.OpenRawResource(sqliteFilename)))
                {
                    using (var binaryWriter = new BinaryWriter(new FileStream(path, FileMode.Create)))
                    {
                        byte[] buffer = new byte[2048];
                        int length = 0;
                        while ((length = binaryReader.Read(buffer, 0, buffer.Length)) > 0)
                        {
                            binaryWriter.Write(buffer, 0, length);
                        }
                    }
                }
            }
            var plat = new SQLite.Net.Platform.XamarinAndroid.SQLitePlatformAndroid();
            var conn = new SQLite.Net.SQLiteConnection(plat, path, false);

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
