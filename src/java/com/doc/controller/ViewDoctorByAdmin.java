   package com.doc.controller;
   import com.doc.dao.MethodRelatedAdmin;
   import com.doc.dao.MethodRelatedPatient;
   import com.doc.model.DoctorRegistrationClass;
   import java.io.IOException;
   import java.io.PrintWriter;
   import java.util.List;
   import javax.servlet.ServletException;
   import javax.servlet.http.HttpServlet;
   import javax.servlet.http.HttpServletRequest;
   import javax.servlet.http.HttpServletResponse;
   public class ViewDoctorByAdmin extends HttpServlet 
  {
      protected void processRequest(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException
      {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out =response.getWriter();
        DoctorRegistrationClass drc=new DoctorRegistrationClass(); 
        MethodRelatedAdmin mra=new MethodRelatedAdmin();
        List<DoctorRegistrationClass>mylist;
           try
           {
               mylist=mra.viewDoctorByAdmin(); 
               out.println("<table border=1>");
               out.println("<tr bgcolor=red>");
               out.println("<th>Doctor Id</th>");
               out.println("<th>First Name</th>");
               out.println("<th>Last Name</th>");
               out.println("<th>Category</th>");
               out.println("<th>Mobile</th>");
               out.println("<th>Address</th>");
               out.println("<th>Password</th>");
               out.println("</tr>");
              for(DoctorRegistrationClass D : mylist)  
              {     
                out.println("<tr>");
                out.println("<td>"+D.getDid()+"</td>");
                out.println("<td>"+D.getDfname()+"</td>");
                out.println("<td>"+D.getDlname()+"</td>");
                out.println("<td>"+D.getDcategory()+"</td>");
                out.println("<td>"+D.getDmob()+"</td>");
                out.println("<td>"+D.getDaddress()+"</td>");
                out.println("<td>"+D.getDpass()+"</td>");
                out.println("</tr>");
              }   
          }
          catch(Exception e)
          {
            e.printStackTrace();
          }
       }
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
       {
         processRequest(request,response);
       }
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
     {
        processRequest(request,response);
     }
}
