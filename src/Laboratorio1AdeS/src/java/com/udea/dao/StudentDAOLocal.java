
package com.udea.dao;

import com.udea.model.Student;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Joaquin David
 */


@Local
public interface StudentDAOLocal {

    void addStudent(Student student);

    void editStudent(Student student);

    void deleteStudent(int studentId);

    Student getStudent(int studentId);

    List<Student> getAllStudents();
    
}
