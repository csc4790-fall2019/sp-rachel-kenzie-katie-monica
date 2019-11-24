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

       public String Address {
            get; set;
        }

        public String Hours {
            get; set;
        }

        public String Phonenumber {
            get; set;
        }

        public String Tags {
            get; set;
        }
        //public int ID { get; internal set; }

//        public override string ToString()
        //{
          //  return Name;
       // }
    }
 }
