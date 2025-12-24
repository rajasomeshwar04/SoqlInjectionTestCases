public class SanitizedExample {
    public static void example(String userInput) {
        String safe = String.escapeSingleQuotes(userInput);
        String soql =
            'SELECT Id, Name FROM Account WHERE Name = \'' + safe + '\'';
        Database.query(soql); // should be considered safe
    }
}
