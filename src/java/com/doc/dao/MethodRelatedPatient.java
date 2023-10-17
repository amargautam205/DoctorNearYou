 package com.doc.dao;
 import com.doc.connection.*;
 import com.doc.model.BookAppointmentClass;
import com.doc.model.DoctorRegistrationClass;
import com.doc.model.PatientRegistration;
 import java.sql.*;
import java.util.ArrayList;
import java.util.List;
 public class MethodRelatedPatient
 {   
   public int autoIncrOfPatientId()throws SQLException
    {
        int n=1557;
        String sql;
        sql="select max(patient_id) from patient_registration";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {
            n=rs.getInt(1);
            n=n+1;
        }
        return n;
    }
    public boolean insertPatient(PatientRegistration PR)throws SQLException
     {
        String sql;
        sql="insert into patient_registration values(?,?,?,?,?,?,?,?)";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,PR.getPid());
        ps.setString(2,PR.getPfname());
        ps.setString(3,PR.getPlname());
        ps.setString(4,PR.getPemail());
        ps.setString(5,PR.getPgender());
        ps.setInt(6,PR.getPage());
        ps.setLong(7,PR.getMob());
        ps.setString(8,PR.getPpassword());
        if(ps.executeUpdate()>0)
        return true;
        return false; 
     }
     public boolean checkLoginOfPatient(int pid,String ppass) throws SQLException
    {
             String sql;
             sql="select * from patient_registration where patient_id=? and patient_password=?";
             Connection con=null;
             PreparedStatement ps=null;
             ResultSet rs=null;
             con=MyConnection.getConnection();
             ps=con.prepareStatement(sql);
             ps.setInt(1,pid);
             ps.setString(2,ppass);
             rs=ps.executeQuery();
             if(rs.next())
             return true; 
             return false;    
    }
      public PatientRegistration myDetail(int pid)throws SQLException
       {
           String sql;
           sql="select * from patient_registration where patient_id=?";
           Connection con=null;
           PreparedStatement ps=null;
           con=MyConnection.getConnection();
           ps=con.prepareStatement(sql);
           ps.setInt(1,pid);
           ResultSet rs=null;
           rs=ps.executeQuery();
           PatientRegistration r=new PatientRegistration();
           if(rs.next())
           {
               r.setPfname(rs.getString(2));
               r.setPlname(rs.getString(3));
               r.setPemail(rs.getString(4));
               r.setPgender(rs.getString(5));
               r.setPage(rs.getInt(6));
               r.setMob(rs.getLong(7));
               r.setPpassword(rs.getString(8));
           }
           else
               r=null;
          return r;
      }
      public int AppointmentId()throws SQLException
      {
        int n=191026;
        String sql;
        sql="select max(appointment_id) from book_appointment";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {
            n=rs.getInt(1);
            n=n+1;
        }
        return n;
    }
    public List<DoctorRegistrationClass>searchDoctorForAppointment(String Category)throws SQLException
    {
        String sql;
        sql="select * from doctor_registration where Category=?";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setString(1,Category);
        ResultSet rs=null;
        rs=ps.executeQuery();
        List<DoctorRegistrationClass>mylist=new ArrayList();
        while(rs.next())
        {
            DoctorRegistrationClass dr=new DoctorRegistrationClass();
            dr.setDid(rs.getInt(1));
            dr.setDfname(rs.getString(2));
            dr.setDlname(rs.getString(3));
            dr.setDcategory(rs.getString(4));
            dr.setDmob(rs.getLong(5));
            dr.setDaddress(rs.getString(6));
            dr.setDpass(rs.getString(7));
            mylist.add(dr);
        }
        return mylist;
    }
   public boolean bookAppointment(BookAppointmentClass bac)throws SQLException
   {
        String sql;
        sql="insert into book_appointment values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,bac.getAppointmentId());
        ps.setInt(2,bac.getPatientId());
        ps.setString(3,bac.getPatientFirstName());
        ps.setString(4,bac.getPatientLastName());
        ps.setString(5,bac.getPatientGender());
        ps.setInt(6,bac.getPatientAge());
        ps.setString(7,bac.getPatientEmail());
        ps.setLong(8,bac.getPatientMobile());
        ps.setInt(9,bac.getDoctorId());
        ps.setString(10,bac.getDoctorFname());
        ps.setString(11,bac.getDoctorLname());
        ps.setString(12,bac.getStatus());
        ps.setString(13,bac.getAppointmentDate());
        if(ps.executeUpdate()>0)
        return true;
        return false; 
        
    }
   public List<BookAppointmentClass>myBookingDetail(int patientId)throws SQLException
   {
        String sql;
        sql="select * from book_appointment where patient_id=?";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,patientId);
        ResultSet rs=null;
        rs=ps.executeQuery();
        List<BookAppointmentClass>myBookingList=new ArrayList();
        while(rs.next())
        {
            BookAppointmentClass bac=new BookAppointmentClass();
            bac.setAppointmentId(rs.getInt(1));
            bac.setPatientId(rs.getInt(2));
            bac.setPatientFirstName(rs.getString(3));
            bac.setPatientLastName(rs.getString(4));
            bac.setPatientGender(rs.getString(5));
            bac.setPatientAge(rs.getInt(6));
            bac.setPatientEmail(rs.getString(7));
            bac.setPatientMobile(rs.getLong(8));
            bac.setDoctorId(rs.getInt(9));
            bac.setDoctorFname(rs.getString(10));
            bac.setDoctorLname(rs.getString(11));
            bac.setStatus(rs.getString(12));
            bac.setAppointmentDate(rs.getString(13));
            
            myBookingList.add(bac);
        }
        return myBookingList;
   }
   public boolean cancelAppointment(int appointmentId)throws SQLException
   {
       String sql;
       sql="delete from book_appointment where appointment_id=?";
       Connection con=null;
       PreparedStatement ps=null;
       con=MyConnection.getConnection();
       ps=con.prepareStatement(sql);
       boolean result;
       result=ps.execute();
       if(result)
       {
           return true;
       }
       else
       {
           return false;
       }
   }
}
