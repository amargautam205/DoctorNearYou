   package com.doc.dao;
   import com.doc.connection.MyConnection;
   import com.doc.model.DoctorRegistrationClass;
   import com.doc.model.PatientRegistration;
   import java.sql.Connection;
   import java.sql.PreparedStatement;
   import java.sql.ResultSet;
   import java.sql.SQLException;
   import java.util.ArrayList;
import java.util.List;
   public class MethodRelatedAdmin 
   {
      public boolean checkLoginOfAdmin(int aid,String apass) throws SQLException
      {
             String sql;
             sql="select * from admin_registration where admin_id=? and password=?";
             Connection con=null;
             PreparedStatement ps=null;
             con=MyConnection.getConnection();
             ps=con.prepareStatement(sql);
             ps.setInt(1,aid);
             ps.setString(2,apass);
             ResultSet rs=null;
             rs=ps.executeQuery();
             if(rs.next())
             return true; 
             return false;    
      }
     public List<DoctorRegistrationClass>viewDoctorByAdmin()throws SQLException
     {
         String sql;
         sql="select * from doctor_registration";
         Connection con;
         con=MyConnection.getConnection();
         PreparedStatement ps;
         ps=con.prepareStatement(sql);
         ResultSet rs=null;
         rs=ps.executeQuery();
         List<DoctorRegistrationClass>mylist=new ArrayList();
         while(rs.next())
         {
             DoctorRegistrationClass drc=new DoctorRegistrationClass();
             drc.setDid(rs.getInt(1));
             drc.setDfname(rs.getString(2));
             drc.setDlname(rs.getString(3));
             drc.setDcategory(rs.getString(4));
             drc.setDmob(rs.getLong(5));
             drc.setDaddress(rs.getString(6));
             drc.setDpass(rs.getString(7));
             mylist.add(drc);
         }
         return mylist;
    } 
     public List<PatientRegistration>viewPatientByAdmin()throws SQLException
     {
         String sql;
         sql="select * from patient_registration";
         Connection con;
         con=MyConnection.getConnection();
         PreparedStatement ps;
         ps=con.prepareStatement(sql);
         ResultSet rs=null;
         rs=ps.executeQuery();
         List<PatientRegistration>mylist=new ArrayList();
         while(rs.next())
         {
           PatientRegistration pr=new PatientRegistration();
            pr.setPid(rs.getInt(1));
            pr.setPfname(rs.getString(2));
            pr.setPlname(rs.getString(3));
            pr.setPemail(rs.getString(4));
            pr.setPgender(rs.getString(5));
            pr.setPage(rs.getInt(6));
            pr.setMob(rs.getLong(7));
            pr.setPpassword(rs.getString(8)); 
            mylist.add(pr);
         }
         return mylist;
     }
}
