public class StringArrayTest
{
    public static List<String> generateStringArray(Integer n)
    {
        List<String> l = new List<String>();
        for(Integer i =0; i < n; i++)
            l.add('Test ' + i);
        return l;
    }
}