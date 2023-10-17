package com.doc.dao;

import com.doc.connection.MyConnection;
import com.doc.model.BookAppointmentClass;
import com.doc.model.DoctorRegistrationClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MethodRelatedDoctor
{
     public boolean checkLoginOfDoctor(int did,String dpass)throws SQLException
      {
          String sql;
          sql="select * from doctor_registration where doctor_id=? and password=?";
          Connection con=null;
          PreparedStatement ps=null;
          con=MyConnection.getConnection();
          ps=con.prepareStatement(sql);
          ps.setInt(1,did);
          ps.setString(2,dpass);
          ResultSet rs=null;
          rs=ps.executeQuery();
          if(rs.next())
          return true;
          return false;
      }
       public int autoIncrOfDoctor()throws SQLException
      {
         int n=13589;
         String sql;
         sql="select max(doctor_id) from doctor_registration";
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
        public boolean insertDoctorData(DoctorRegistrationClass drc)throws SQLException
      {
        String sql;
        sql="insert into doctor_registration values(?,?,?,?,?,?,?)";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,drc.getDid());
        ps.setString(2,drc.getDfname());
        ps.setString(3,drc.getDlname());
        ps.setString(4,drc.getDcategory());
        ps.setLong(5,drc.getDmob());
        ps.setString(6,drc.getDaddress());
        ps.setString(7,drc.getDpass());
        if(ps.executeUpdate()>0)
        return true;
        return false; 
     }
    public DoctorRegistrationClass detailOfDoctor(int did)throws SQLException
    {
        String sql;
        sql="select * from doctor_registration where doctor_id=?";
        Connection con;
        PreparedStatement ps;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,did);
        ResultSet rs=null;
        rs=ps.executeQuery();
        DoctorRegistrationClass drc=new DoctorRegistrationClass();
        if(rs.next())
        {
            drc.setDid(rs.getInt(1));
            drc.setDfname(rs.getString(2));
            drc.setDlname(rs.getString(3));
            drc.setDcategory(rs.getString(4));
            drc.setDmob(rs.getLong(5));
            drc.setDaddress(rs.getString(6));
            drc.setDpass(rs.getString(7));
        }
        else{
            drc=null;
        }
        return drc;
    }
     public List<DoctorRegistrationClass>searchAllDoctor()throws SQLException
    {
        String sql;
        sql="select * from doctor_registration";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
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
      public List<BookAppointmentClass>myAppointment(int docId)throws SQLException
     {
        String sql;
        sql="select * from book_appointment where doctor_id=?";
        Connection con=null;
        PreparedStatement ps=null;
        con=MyConnection.getConnection();
        ps=con.prepareStatement(sql);
        ps.setInt(1,docId);
        ResultSet rs=null;
        rs=ps.executeQuery();
        List<BookAppointmentClass>myBooking=new ArrayList();
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
            myBooking.add(bac);
        }
        return myBooking;
   }
}
