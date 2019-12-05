package orar.entities;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Orarul {
    @Id
    @GeneratedValue
    private int id;
    @OneToOne
    private Profesor profesor;
    @OneToOne
    private Grupa grupa;
    @OneToOne
    private Disciplina disciplina;
    private Date data;
    private int nrlectiei;
    private String tipulLectiei;


    @OneToOne
    private Aula aula;

    public Orarul() {
        super();
    }

    public Orarul(Date data, int nrlectiei) {
        super();
        this.data = data;
        this.nrlectiei = nrlectiei;
    }

    public String getTipulLectiei() {
        return tipulLectiei;
    }

    public void setTipulLectiei(String tipulLectiei) {
        this.tipulLectiei = tipulLectiei;
    }

    public Aula getAula() {
        return aula;
    }

    public void setAula(Aula aula) {
        this.aula = aula;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Profesor getProfesor() {
        return profesor;
    }

    public void setProfesor(Profesor profesor) {
        this.profesor = profesor;
    }

    public Grupa getGrupa() {
        return grupa;
    }

    public void setGrupa(Grupa grupa) {
        this.grupa = grupa;
    }


    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getNrlectiei() {
        return nrlectiei;
    }

    public void setNrlectiei(int nrlectiei) {
        this.nrlectiei = nrlectiei;
    }
}
