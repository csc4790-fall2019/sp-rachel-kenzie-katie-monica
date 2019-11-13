using System.Collections.Generic;
using System.Linq;

namespace HHPhillyApp
{
    public static class DataService
    {
        public static List<string> ResourceNames { get; } = new List<string>
        {
            "OHS Apple Tree Family Center",
            "Red Shield Family Residence",
            "Gaudenzia's House of Passage - Kirkbride Center",
            "Roosevelt Darby Center",
            "Station House",
            "Sunday Breakfast Rescue Mission"
        };

        public static List<string> GetSearchResults(string queryString)
        {
            var normalizedQuery = queryString?.ToLower() ?? "";
            return ResourceNames.Where(f => f.ToLowerInvariant().Contains(normalizedQuery)).ToList();
        }
    }
}