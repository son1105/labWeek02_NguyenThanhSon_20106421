package vn.edu.iuh.fit.backend.connection;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Connection {
    private EntityManagerFactory entityManagerFactory;
    private static Connection instance;

    public Connection() {
        entityManagerFactory = Persistence.createEntityManagerFactory("ntslab02");
    }

    public static Connection getInstance() {
        if(instance==null)
            instance = new Connection();
        return instance;
    }

    public EntityManagerFactory getEntityManagerFactory() {
        return entityManagerFactory;
    }
}
