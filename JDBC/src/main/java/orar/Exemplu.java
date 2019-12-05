package orar;

import orar.entities.Orarul;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Exemplu {
    public static void main(String[] args) throws ParseException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("oral");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        DateFormat format = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss", Locale.ENGLISH);
        Date date = format.parse("2017-12-13 09:40:00");
        Query a =entityManager.createQuery("select o from Orarul o where o.data=?1");
        a.setParameter(1,date);
        System.out.println("------------------------");
        System.out.println(a.getResultList().size());
        System.out.println("-----------------------");
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();
    }
}
