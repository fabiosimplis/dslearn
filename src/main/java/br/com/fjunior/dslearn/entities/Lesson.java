package br.com.fjunior.dslearn.entities;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_lesson")
// Forma de como será a implementação da entidade
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Lesson {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String position;

    @ManyToOne
    @JoinColumn(name="section_id")
    private Section section;

    @OneToMany(mappedBy= "lesson")
    private Set<Deliver> deliveries = new HashSet<>();

    @ManyToMany
    @JoinTable(name = "tb_lessons_done",
        joinColumns = @JoinColumn(name = "lesson_id"),
        inverseJoinColumns = {
            @JoinColumn(name = "user_id"),
            @JoinColumn(name = "offer_id")
        }
    )
    private Set<Enrollment> enrollmentsDone = new HashSet<>();

    public Lesson(){}

    public Lesson(Long id, String title, String position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public Set<Enrollment> getEnrollmentsDone() {
        return enrollmentsDone;
    }

    private Set<Deliver> getDeliveries() {
        return deliveries;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Lesson other = (Lesson) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }
}
