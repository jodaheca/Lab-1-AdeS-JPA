
package com.udea.controller;

import com.udea.dao.StudentDAOLocal;
import com.udea.model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joaquin David
 */

//@WebServlet(name = "StudentServlet", urlPatterns = {
public class StudentServlet extends HttpServlet {
    @EJB
    private StudentDAOLocal studentDAO;

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String action=request.getParameter("action");
            String studentIdStr= request.getParameter("studentId");
            int studentId=0;
            if(studentIdStr!=null && !studentIdStr.equals(""))
                studentId=Integer.parseInt(studentIdStr);
                String firstname=request.getParameter("firstname");
                String lastname=request.getParameter("lastname");
                String yearLevelStr=request.getParameter("yearLevel");
                int yearLevel=0;
            if(yearLevelStr!=null && !yearLevelStr.equals(""))
                yearLevel=Integer.parseInt(yearLevelStr);
       
            Student student=new Student(studentId,firstname,lastname,yearLevel);
        
            if("Agregar".equalsIgnoreCase(action)){
                studentDAO.addStudent(student);
                List estudiantes=studentDAO.getAllStudents();
                 Student estudiante=null;
                    request.setAttribute("student", estudiante);
                    request.setAttribute("Estudiantes", estudiantes);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminStudent.jsp");
                    dispatcher.forward(request, response);
                    return;

            }  else  if("Editar".equalsIgnoreCase(action)){
                    studentDAO.editStudent(student);
                    List estudiantes=studentDAO.getAllStudents();
                    Student estudiante=null;
                    request.setAttribute("student", estudiante);
                    request.setAttribute("Estudiantes", estudiantes);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminStudent.jsp");
                    dispatcher.forward(request, response);
                    return;

            }else   if("Eliminar".equalsIgnoreCase(action)){
                    studentDAO.deleteStudent(studentId);
                    List estudiantes=studentDAO.getAllStudents();
                    Student estudiante=null;
                    request.setAttribute("student", estudiante);
                    request.setAttribute("Estudiantes", estudiantes);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminStudent.jsp");
                    dispatcher.forward(request, response);
                    return;

             }else  if("Buscar".equalsIgnoreCase(action)){
                    student=studentDAO.getStudent(studentId);
                    request.setAttribute("student", student);
                    List estudiantes=studentDAO.getAllStudents();
                    request.setAttribute("Estudiantes", estudiantes);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminStudent.jsp");
                    dispatcher.forward(request, response);
                    return;
             }else  if("Recargar".equalsIgnoreCase(action)){
                    Student estudiante=null;
                    request.setAttribute("student", estudiante);
                    List estudiantes=studentDAO.getAllStudents();
                    request.setAttribute("Estudiantes", estudiantes);
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminStudent.jsp");
                    dispatcher.forward(request, response);
                    return;
             }

   
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

