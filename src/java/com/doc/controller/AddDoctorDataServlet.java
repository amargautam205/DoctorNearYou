  package com.doc.controller;
  import com.doc.dao.MethodRelatedDoctor;
  import com.doc.model.DoctorRegistrationClass;
  import java.io.IOException;
  import java.io.PrintWriter;
  import javax.servlet.ServletException;
  import javax.servlet.http.HttpServlet;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpServletResponse;
  public class AddDoctorDataServlet extends HttpServlet
  {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();
        int did;
        String fname,lname,categorization,address,password;
        long mob;
        did=Integer.parseInt(request.getParameter("did"));
        fname=request.getParameter("dfname");
        lname=request.getParameter("dlname");
        categorization=request.getParameter("dcategory");
        mob=Long.parseLong(request.getParameter("dmobile"));
        address=request.getParameter("daddress");
        password=request.getParameter("dpassword");
        
        DoctorRegistrationClass drc=new DoctorRegistrationClass();
        drc.setDid(did);
        drc.setDfname(fname);
        drc.setDlname(lname);
        drc.setDcategory(categorization);
        drc.setDmob(mob);
        drc.setDaddress(address);
        drc.setDpass(password);
        try
        {
            MethodRelatedDoctor mrd=new MethodRelatedDoctor();
            if(mrd.insertDoctorData(drc))
            {
                response.sendRedirect("AdminHomePage.jsp");
            }
            else
            {
                out.println("Error");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
