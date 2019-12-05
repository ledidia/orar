package orar;

import com.sun.org.apache.xpath.internal.SourceTree;
import orar.entities.*;
import org.hibernate.query.NativeQuery;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/o")
public class Orar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("oral");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        response.setContentType("text/html");
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        Query grup = entityManager.createQuery("Select g from Grupa g");
        List<Grupa> grup1 = grup.getResultList();
        Query profesori = entityManager.createQuery("select p from Profesor p");
        List<Profesor> prof = profesori.getResultList();
        Query aula = entityManager.createQuery("Select a from Aula a");
        List<Aula> aula1 = aula.getResultList();
        Query orar = entityManager.createQuery("Select o from Orarul o ");
        List<Orarul> o = orar.getResultList();
        Date dat = new Date();
        String dayOfWeek = new SimpleDateFormat("EEEE", Locale.ENGLISH).format(dat);
        request.setAttribute("ziua1", dayOfWeek);
        List<String> zi = new ArrayList<String>();
        zi.add("Monday");
        zi.add("Tuesday");
        zi.add("Wednesday");
        zi.add("Thursday");
        zi.add("Friday");
        zi.add("Saturday");
        zi.add("Sunday");
        zi.remove(dayOfWeek);
        request.setAttribute("zi1", zi);

        if (request.getParameter("profesori") != null) {
            request.setAttribute("den", "Profesori");
            request.setAttribute("alegere", prof);
        } else if (request.getParameter("aula") != null) {
            request.setAttribute("den", "Aula");
            request.setAttribute("alegere", aula1);
        } else {
            request.setAttribute("den", "Grupa");
            request.setAttribute("alegere", grup1);
        }

        if (request.getParameter("cauta") != null) {
            String s = "%" + request.getParameter("caut") + "%";
            String aleg = request.getParameter("tripType");
            String s1 = request.getParameter("id1");
            String rez;
            String d = request.getParameter("data12");
            String[] d1 = d.split("-");
            Date date1 = null;
            Date date2 = null;
            DateFormat format = new SimpleDateFormat("dd.MM.yyyy");
            try {
                date1 = format.parse(d1[0]);
                date2 = format.parse(d1[1]);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            if (aleg != null) rez = aleg;
            else rez = s;
            if (s1.equals("Profesori")) {
                Query s2 = entityManager.createQuery("Select p from Profesor p where p.name like ?1");
                s2.setParameter(1, rez);
                List<Profesor> a = s2.getResultList();
                request.setAttribute("den", "Profesori");
                request.setAttribute("alegere", a);
                Query s3 = entityManager.createQuery("Select o from Orarul o where o.profesor.name like ?1 and  o.data between ?2 and ?3 ");
                s3.setParameter(1, rez);
                s3.setParameter(2, date1);
                s3.setParameter(3, date2);
                List<Orarul> o1 = s3.getResultList();
                HashMap<String, Orarul> map = new HashMap<String, Orarul>();
                for (Orarul o2 : o1) {
                    String dayOfWeek1 = new SimpleDateFormat("EEEE", Locale.ENGLISH).format(o2.getData());
                    map.put(dayOfWeek1, o2);
                }
request.setAttribute("p1",map);
                request.setAttribute("p", o1);
            } else {
                if (s1.equals("Aula")) {
                    Query s2 = entityManager.createQuery("Select a from Aula a where a.name like ?1 order by a.name");
                    s2.setParameter(1, rez);
                    List<Aula> a = s2.getResultList();
                    request.setAttribute("den", "Aula");
                    request.setAttribute("alegere", a);
                } else {
                    Query s2 = entityManager.createQuery("Select g from Grupa g where g.name like ?1 order by g.name");
                    s2.setParameter(1, rez);
                    List<Grupa> a = s2.getResultList();
                    System.out.println(a.size());
                    request.setAttribute("den", "Grupa");
                    request.setAttribute("alegere", a);
                }
            }
        }
        dispatcher.forward(request, response);
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();
    }
}

