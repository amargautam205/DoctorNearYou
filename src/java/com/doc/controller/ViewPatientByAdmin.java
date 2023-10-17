   package com.doc.controller;
   import com.doc.dao.MethodRelatedAdmin;
   import com.doc.model.PatientRegistration;
   import java.io.IOException;
   import java.io.PrintWriter;
   import java.util.List;
   import javax.servlet.ServletException;
   import javax.servlet.http.HttpServlet;
   import javax.servlet.http.HttpServletRequest;
   import javax.servlet.http.HttpServletResponse;
   public class ViewPatientByAdmin extends HttpServlet
  {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
      {
           response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
           PatientRegistration pr=new PatientRegistration();
           MethodRelatedAdmin mra=new MethodRelatedAdmin();
           List<PatientRegistration>mylist;
           try
           {
               mylist=mra.viewPatientByAdmin();
               out.println("<table border=1>");
               out.println("<tr bgcolor=red>");
               out.println("<th>Patient Id</th>");
               out.println("<th>First Name</th>");
               out.println("<th>Last Name</th>");
               out.println("<th>Email</th>");
               out.println("<th>Gender</th>");
               out.println("<th>Age</th>");
               out.println("<th>Mobile</th>");
               out.println("<th>Password</th>");
               out.println("</tr>");
               
              for(PatientRegistration P: mylist)  
              {     
                out.println("<tr>");
                out.println("<td>"+P.getPid()+"</td>");
                out.println("<td>"+P.getPfname()+"</td>");
                out.println("<td>"+P.getPlname()+"</td>");
                out.println("<td>"+P.getPemail()+"</td>");
                out.println("<td>"+P.getPgender()+"</td>");
                out.println("<td>"+P.getPage()+"</td>");
                out.println("<td>"+P.getMob()+"</td>");
                out.println("<td>"+P.getPpassword()+"</td>");
                out.println("</tr>");
              } 
           }
           catch(Exception e)
           {
               e.printStackTrace();
           }
      }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
  }
