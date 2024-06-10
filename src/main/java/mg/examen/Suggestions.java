package mg.examen;

import javax.persistence.*;

@Entity
@Table(name = "suggestions")
public class Suggestions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    @OneToOne
    @JoinColumn(name = "id_question")
    public Questions questions;
    public String titre_suggestion;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitre_suggestion() {
        return titre_suggestion;
    }

    public void setTitre_suggestion(String titre_suggestion) {
        this.titre_suggestion = titre_suggestion;
    }

    public Questions getQuestions() {
        return questions;
    }

    public void setQuestions(Questions questions) {
        this.questions = questions;
    }
}
