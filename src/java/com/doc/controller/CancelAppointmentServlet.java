package com.doc.controller;
import com.doc.dao.MethodRelatedPatient;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CancelAppointmentServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8"); 
        {
          PrintWriter out=response.getWriter();
          int appointmentId=Integer.parseInt(request.getParameter("AppointmentId"));
          String status=request.getParameter("Status");
          out.println(appointmentId);
          out.println(status);
          String temp="Pending";
          MethodRelatedPatient mrp=new MethodRelatedPatient();
          try
          { 
            if(status.equalsIgnoreCase(temp))
            {
             mrp.cancelAppointment(appointmentId);
             out.println("cancel Appointment");
            }
            else
            {
              out.println("Can Not Cancel");
            }
          }
          catch(Exception e)
          {
            e.printStackTrace();
          }
       }
   }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
      
            processRequest(request, response);
    }
}
