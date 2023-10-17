 package com.doc.controller;
 import com.doc.dao.MethodRelatedPatient;
 import com.doc.model.PatientRegistration;
 import java.io.IOException;
 import java.io.PrintWriter;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 public class InsertPatientDataServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out=response.getWriter();
        int pid,page;
        String pfname,plname,pemail,pgender,ppass;
        long pmob;
        pid=Integer.parseInt(request.getParameter("pid"));
        pfname=request.getParameter("pfname");
        plname=request.getParameter("plname");
        pemail=request.getParameter("pemail");
        pgender=request.getParameter("pgender");
        page=Integer.parseInt(request.getParameter("page"));
        ppass=request.getParameter("ppass");
        pmob=Long.parseLong(request.getParameter("pmobile"));
        PatientRegistration pr=new PatientRegistration();
        pr.setPid(pid);
        pr.setPfname(pfname);
        pr.setPlname(plname);
        pr.setPemail(pemail);
        pr.setPgender(pgender);
        pr.setPage(page);
        pr.setMob(pmob);
        pr.setPpassword(ppass);
        
        MethodRelatedPatient mrp=new MethodRelatedPatient();
        try
        {
            if(mrp.insertPatient(pr))
            {
              response.sendRedirect("PatientHomePage.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
