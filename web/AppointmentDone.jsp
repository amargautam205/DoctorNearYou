<%-- 
    Document   : AppointmentDone
    Created on : 24 Mar, 2023, 4:07:31 PM
    Author     : Amar Gautam
--%>
<%@page import="com.doc.model.BookAppointmentClass"%>
<%@page import="com.doc.dao.MethodRelatedDoctor"%>
<%@page import="com.doc.model.DoctorRegistrationClass"%>
<%@page import="com.doc.model.PatientRegistration"%>
<%@page import="com.doc.dao.MethodRelatedPatient"%>
 <%!
  PatientRegistration pr;
  DoctorRegistrationClass drc;
 %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>AppointmentDone</title>
  </head>
  <body>
      <!--Coding Section Started-->
      <% 
            int appointmentId=Integer.parseInt(session.getAttribute("AppointmentId").toString());
            int doctorId=Integer.parseInt(request.getParameter("DoctorIdEnterByUserForAppointment"));
            String date=session.getAttribute("AppointmentDate").toString();
            
            MethodRelatedDoctor mrd=new MethodRelatedDoctor();
            drc=mrd.detailOfDoctor(doctorId);
            
            int patientId=Integer.parseInt(session.getAttribute("PatientId").toString());
            MethodRelatedPatient mrp=new MethodRelatedPatient();
            pr=mrp.myDetail(patientId);
            
            BookAppointmentClass bac=new BookAppointmentClass();
            bac.setAppointmentId(appointmentId);
            bac.setPatientId(patientId);
            bac.setPatientFirstName(pr.getPfname());
            bac.setPatientLastName(pr.getPlname());
            bac.setPatientGender(pr.getPgender());
            bac.setPatientAge(pr.getPage());
            bac.setPatientEmail(pr.getPemail());
            bac.setPatientMobile(pr.getMob());
            bac.setDoctorId(drc.getDid());
            bac.setDoctorFname(drc.getDfname());
            bac.setDoctorLname(drc.getDlname());
            bac.setStatus("Pending");
            bac.setAppointmentDate(date);
            mrp.bookAppointment(bac);
      %> 
      <!--Coding Section End-->
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
