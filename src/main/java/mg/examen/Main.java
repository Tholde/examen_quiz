package mg.examen;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        //initialisation de session, transaction dans la configuration
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        //initialisation des objets actifs
        Suggestions suggestions = new Suggestions();
        Users users = new Users();
        List<Questions> questionsList = session.createQuery("from Questions", Questions.class).getResultList();
//        users.setMatricule(30153);
//        users.setNom("Rahalahifaliako Tholde Navajoh");
//        System.out.println(users.toString());
//        session.save(users);
        for (Questions question : questionsList) {
            System.out.println(question);
            Reponse reponseUpdate = session.get(Reponse.class, question.id);
            while (true) {
                try {
                    Scanner scan = new Scanner(System.in).useDelimiter("\n");
                    System.out.print("Entrer votre choix (strictement le numero indiquer avant l'alphabet) : ");
                    int val = scan.nextInt();
                    reponseUpdate.setId_reponses(val);
                    session.update(reponseUpdate);
                    tx.commit();
                    break;
                }catch (Exception e) {
                    System.out.println("Erreur d'entrer, repetez");
                }
            }
        }
        //fermeture de transaction et de session
        session.flush();
        session.close();
        factory.close();
    }
}
