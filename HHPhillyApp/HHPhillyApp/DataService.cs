using System.Collections.Generic;
using System.Linq;

namespace HHPhillyApp
{
    public static class DataService
    {
        public static List<string> ResourceNames { get; } = new List<string>
        {
            "Food Services",
            "Healthcare Resources",
            "LGBTQ+ Resources",
            "Men's Resources",
            "Veteran Resources",
            "Women's Resources",
            "Youth Resources" 
        };
           
        public static List<string> GetSearchResults(string queryString)
        {
            var normalizedQuery = queryString?.ToLower() ?? "";
            return ResourceNames.Where(f => f.ToLowerInvariant().Contains(normalizedQuery)).ToList();
        }
    }
}