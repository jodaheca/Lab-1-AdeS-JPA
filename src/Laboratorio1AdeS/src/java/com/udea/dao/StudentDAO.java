
package com.udea.dao;

import com.udea.model.Student;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Joaquin David
 */


@Stateless
public class StudentDAO implements StudentDAOLocal {
    @PersistenceContext
    private EntityManager em;


    @Override
    public void addStudent(Student student) {        
        em.persist(student);
    }

    @Override
    public void editStudent(Student student) {
        em.merge(student);
    }

    @Override
    public void deleteStudent(int studentId) {
        em.remove(getStudent(studentId));
    }

    @Override
    public Student getStudent(int studentId) {
        return em.find(Student.class, studentId);
    }

    @Override
    public List<Student> getAllStudents() {
            return em.createNamedQuery("Student.getAll").getResultList();
    }

   
}
