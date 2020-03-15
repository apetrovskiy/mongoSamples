package app;

import com.mongodb.MongoClient;

public class HelloMongo {
    private static final String HOST = "localhost";
    private static final int PORT = 27017;

    public static void main(final String[] args) {
        try (final var mongoClient = new MongoClient(HOST, PORT)) {
            final var db = mongoClient.getDB("test");
            System.out.println("Successfully connected to MongoDB");
        } catch (Exception e) {
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
        }
    }
}
