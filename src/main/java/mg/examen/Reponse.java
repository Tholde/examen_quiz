package mg.examen;

import javax.persistence.*;

@Entity
@Table(name = "questions")
public class Reponse {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    public int id;
    public String titre;
    public double note;
    public int id_reponses;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public double getNote() {
        return note;
    }

    public void setNote(double note) {
        this.note = note;
    }

    public int getId_reponses() {
        return id_reponses;
    }

    public void setId_reponses(int id_reponses) {
        this.id_reponses = id_reponses;
    }
}
