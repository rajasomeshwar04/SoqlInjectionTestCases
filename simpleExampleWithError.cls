public class SimpleInjection {
    public static void exampleDatabaseQuery(String userInput) {
        String soql =
            'SELECT Id, Name FROM Account ' +
            'WHERE Name = \'' + userInput + '\'';
        Database.query(soql);
    }
}
