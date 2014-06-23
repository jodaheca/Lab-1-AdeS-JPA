
package com.udea.model;

/**
 *
 * @author Joaquin David
 */
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author User
 */
@Entity
@Table(name = "student")
@NamedQueries(@NamedQuery(name="Student.getAll",query="SELECT e FROM Student e"))
public class Student implements Serializable{

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
@Column(name = "studentId")
private int studentId;
@Column(name = "firstname")
private String firstname;
@Column(name = "lastname")
private String lastname;
@Column(name = "yearLevel")
private int yearLevel;

public Student(int studentId, String firstname, String lastname, int yearLevel) {
        this.studentId = studentId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.yearLevel = yearLevel;
    }

    public Student(){}
    
    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studenId) {
        this.studentId = studenId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getYearLevel() {
        return yearLevel;
    }

    public void setYearLevel(int yearLevel) {
        this.yearLevel = yearLevel;
    }
}
