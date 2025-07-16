using System.Collections.Generic;

namespace ExtensionMethods
{
    public static class Extensions
    {
        public static bool IsNullOrEmpty<T>(this IList<T> list)
        {
            if (list is null || list.Count == 0) return true;
            return false;
        }
    }
}