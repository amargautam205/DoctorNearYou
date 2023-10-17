  package com.doc.controller;
  import com.doc.dao.MethodRelatedPatient;
  import com.doc.model.PatientRegistration;
  import java.io.IOException;
  import java.io.PrintWriter;
  import javax.servlet.ServletException;
  import javax.servlet.http.HttpServlet;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpServletResponse;
  import javax.servlet.http.HttpSession;
  public class MyDetailServlet extends HttpServlet
  {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try 
        {
            for(int i=0;i<3;i++)
            {
                out.println("<br>");
                out.println("<br>");
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>MyDetailServlet</title>");            
            out.println("</head>");
            out.println("<body bgcolor=white>");
            out.println("<center>");
            HttpSession session;
            session=request.getSession();
            int pid=Integer.parseInt(session.getAttribute("PatientId").toString());
            MethodRelatedPatient mrp=new MethodRelatedPatient();
            PatientRegistration pr=mrp.myDetail(pid);
            out.println("<h2>"+"My Detail"+"</h2>");
            out.print("<table border=1 bgcolor=whitesmoke  bordercolor=#ff4d4d>");
       
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>PatientId</th>");
               out.println("<td>"+pid+"</td>");
               out.println("</tr>");
      
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>First Name</th>");
               out.println("<td>"+pr.getPfname()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Last Name</th>");
               out.println("<td>"+pr.getPlname()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Email</th>");
               out.println("<td>"+pr.getPemail()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Gender</th>");
               out.println("<td>"+pr.getPgender()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Age</th>");
               out.println("<td>"+pr.getPage()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Mobile</th>");
               out.println("<td>"+pr.getMob()+"</td>");
               out.println("</tr>");
               
               out.println("<tr>");
               out.println("<th bgcolor=#4080bf>Password</th>");
               out.println("<td>"+pr.getPpassword()+"</td>");
               out.println("</tr>");
     
            out.println("</table>");
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
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
