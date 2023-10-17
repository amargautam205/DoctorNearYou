package com.doc.controller;
import com.doc.dao.MethodRelatedAdmin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class CheckAdminLoginServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out =response.getWriter();
        {
            int adminId;
            String adminPass;
            adminId=Integer.parseInt(request.getParameter("aid"));
            adminPass=request.getParameter("apass");
            HttpSession session;
            session=request.getSession(true);
            session.setAttribute("adminId",adminId);
            MethodRelatedAdmin mra=new MethodRelatedAdmin();
           try
           {
              if(mra.checkLoginOfAdmin(adminId,adminPass));
              {
                response.sendRedirect("AdminHomePage.jsp");
              }
           }
           catch(Exception e)
           {
              e.printStackTrace();
           }
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
