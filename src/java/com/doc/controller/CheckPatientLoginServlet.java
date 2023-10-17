package com.doc.controller;
import com.doc.dao.MethodRelatedPatient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CheckPatientLoginServlet extends HttpServlet 
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter out=response.getWriter();
        int pid;
        String ppass;
        pid=Integer.parseInt(request.getParameter("pid"));
        ppass=request.getParameter("ppass");
        HttpSession session;
        session=request.getSession(true);
        session.setAttribute("PatientId",pid);
        MethodRelatedPatient mrp=new MethodRelatedPatient();
        try
        {
            if(mrp.checkLoginOfPatient(pid, ppass))
            {
               response.sendRedirect("PatientHomePage.jsp");
            }
            else
            {
                response.sendRedirect("PatientLoginPage.jsp");
            }
        }
        catch(Exception e)
        {
           e.printStackTrace();
        }
    }
}
