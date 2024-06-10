package mg.examen;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "questions")
public class Questions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    public String titre;
    public double note;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "suggestions", joinColumns = @JoinColumn(name = "id_question"), inverseJoinColumns = @JoinColumn(name = "id"))
    public List<Suggestions> listOfSuggestions = new ArrayList<>();

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("=>Question numero: ").append(id).append("\n");
        sb.append("Titre: ").append(titre).append("\n");
        sb.append("Note: ").append(note).append("\n");
        sb.append("Suggestions:\n");

        int count = 0;
        for (Suggestions suggestion : listOfSuggestions) {
            sb.append(suggestion.getId()).append(" - ").append(suggestion.getTitre_suggestion()).append("\n");
            count++;
            if (count == 4) {
                break;
            }
        }

        return sb.toString();
    }

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

    public List<Suggestions> getListOfSuggestions() {
        return listOfSuggestions;
    }

    public void setListOfSuggestions(List<Suggestions> listOfSuggestions) {
        this.listOfSuggestions = listOfSuggestions;
    }

//    public Suggestions getSuggestions() {
//        return suggestions;
//    }
//
//    public void setSuggestions(Suggestions suggestions) {
//        this.suggestions = suggestions;
//    }
}
