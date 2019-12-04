using System;
using SQLite.Net;
using System.Collections.Generic;
using Xamarin.Forms;
using HHPhillyApp;
using System.Threading.Tasks;
using System.Linq;

namespace HHPhillyApp
{
    public class SQLiteDatabase
    {
        SQLiteConnection dbConn;
        public SQLiteDatabase()
        {
            dbConn = DependencyService.Get<ISQLite>().GetConnection();
            dbConn.CreateTable<Resources>();
            // dbConnection = new SQLiteAsyncConnection(dbPath);
            //dbConnection.CreateTableAsync<Resources>().Wait();
        }

        public List<Resources> GetAllResources()
        {
            return dbConn.Query<Resources>("Select * From [Resources]");
        }

        public List<Resources> GetAllLegalServices()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Legal Services%'");
        }

        public List<Resources> GetAllMen()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Men%'");
        }

        public List<Resources> GetAllWomen()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Women%'");
        }

        public List<Resources> GetAllShelter()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Shelter%'");
        }

        public List<Resources> GetAllLGBTQ()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%LGBTQ%'");
        }

        public List<Resources> GetAllYouthServices()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Youth Services%'");
        }

        public List<Resources> GetAllSTITesting()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%STI Testing%'");
        }

        public List<Resources> GetAllFamilies()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Families%'");
        }
        public List<Resources> GetAllHaircuts()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Haircuts%'");
        }
        public List<Resources> GetAllBenefitsAccess()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%BenefitsAccess%'");
        }
        public List<Resources> GetAllClothing()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Clothing%'");
        }
        public List<Resources> GetAllCounseling()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Counseling%'");
        }

        public List<Resources> GetAllHealthServices()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Health Services%'");
        }

        public List<Resources> GetAllDropIn()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Drop-in%'");
        }

        public List<Resources> GetAllArt()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Art%'");
        }

        public List<Resources> GetAllVeterans()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Veterans%'");
        }

        public List<Resources> GetAllEmergency()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Emergency%'");
        }

        public List<Resources> GetAllDomesticViolence()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Domestic Violence%'");
        }

        public List<Resources> GetAllEducation()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Education%'");
        }

        public List<Resources> GetAllHIVTesting()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%HIV Testing%'");
        }

        public List<Resources> GetAllMeals()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Meals%'");
        }

        public List<Resources> GetAllMentalHealth()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Mental Health%'");
        }

        public List<Resources> GetAllNonEmergency()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Non-Emergency%'");
        }

        public List<Resources> GetAllPersonalCare()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Personal Care%'");
        }

        public List<Resources> GetAllRecovery()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Recovery%'");
        }

        public List<Resources> GetAllShowers()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Showers%'");
        }

        public List<Resources> GetAllSupportGroups()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Support%'");
        }

        public List<Resources> GetAllSyringeExchange()
        {
            return dbConn.Query<Resources>("Select * From [ResourceTags] WHERE TagNames LIKE '%Syringe Exchange%'");
        }
    }
}