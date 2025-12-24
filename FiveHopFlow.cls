public class FiveHopFlow {
    public static void a() {
        
        b(p);
    }
    static void b(String p1) {
        c(p1);
    }
    static void c(String p2) {
        d(p2);
    }
    static void d(String p3) {
        e(p3);
    }
    static void e(String finalVal) {
        String soql =
            'SELECT Id FROM Account WHERE Name = \'' + finalVal + '\'';
        Database.query(soql);
    }
}
