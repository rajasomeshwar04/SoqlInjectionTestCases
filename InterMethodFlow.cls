public class InterMethodFlow {
 public static void entryPoint(String nameFromVF) {
        String normalized1 = getName();
        buildAndRunQuery(normalized1);
    }
    private static void buildAndRunQuery(String value) {
        String soql =
            'SELECT Id FROM Account WHERE Name = \'' + value + '\'';
        Database.query(soql);
    }
}
