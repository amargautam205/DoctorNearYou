package com.doc.controller;
import com.doc.dao.MethodRelatedDoctor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckDoctorLoginServlet extends HttpServlet
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
      {
         response.setContentType("text/html;charset=UTF-8");
         PrintWriter out =response.getWriter();
            int did;
            String dpass;
            did=Integer.parseInt(request.getParameter("did"));
            dpass=request.getParameter("dpass");
            HttpSession session;
            session=request.getSession(true);
            session.setAttribute("doctorId",did);
            MethodRelatedDoctor mrd=new MethodRelatedDoctor();
            try
            {
                if(mrd.checkLoginOfDoctor(did,dpass))
               {
                  response.sendRedirect("DoctorHomePage.jsp");
               }
                else
                {
                    out.println("Wrong Data.");
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
           processRequest(request, response);
        }
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }
}
