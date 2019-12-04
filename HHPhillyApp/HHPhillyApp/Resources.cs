using SQLite.Net.Attributes;
using System;
using System.Collections.Generic;

namespace HHPhillyApp
{
    public class Resources
    {
       public String Name {
            get; set;
        }

       public String Transportation {
            get; set;
        }

        public String Neighborhood {
            get; set;
        }

        public String PhoneNumber
        {
            get; set;
        }

        public String Address {
            get; set;
        }

        public String Payment {
            get; set;
        }

        public String MonHours
        {
            get; set;
        }

        //public int ID { get; internal set; }

        //        public override string ToString()
        //{
        //  return Name;
        // }
    }
 }
