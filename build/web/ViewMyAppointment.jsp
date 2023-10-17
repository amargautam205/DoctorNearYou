<%-- 
    Document   : ViewMyAppointement
    Created on : 28 Mar, 2023, 10:47:01 AM
    Author     : Amar Gautam
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.doc.dao.MethodRelatedDoctor"%>
<%@page import="com.doc.model.BookAppointmentClass"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
      <%
          int doctorId=Integer.parseInt(session.getAttribute("doctorId").toString());
          MethodRelatedDoctor mrd=new MethodRelatedDoctor();
          List<BookAppointmentClass>myApp=new ArrayList();
          myApp=mrd.myAppointment(doctorId);
      %>
      <!--Coding Section Started-->
     <!--Navigation Bar Starting-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container">
          <a class="navbar-brand">Doctor Near You</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
               <a class="nav-link" href="DoctorDetail.jsp">My Profile</a>
             </li> 
             <li class="nav-item">
                 <a class="nav-link" href="ViewMyAppointment.jsp">View Appointment</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">View Feedback</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">Logout</a>
             </li>
          </ul>
        </div>
     </div>
   </nav>  
  <!--Navigation bar Ending-->
  <!--Start Of Table Creation-->
  <div class="container mt-5">
       <div class="table-responsive"> 
           <form method="post" action="">
            <table class="table table-striped table-bordered table-hover table-sm">
               <thead class="thead-dark">
                 <tr>
                    <th>AppointmentId</th>
                    <th>PatientId</th>
                    <th>Patient First Name</th>  
                    <th>Patient Last Name</th>
                    <th>Patient Gender</th>  
                    <th>Patient Age</th>
                    <th>Patient Email</th>
                    <th>Patient Mobile</th>
                    <th>Doctor Id</th>
                    <th>Doctor First Name</th>
                    <th>Doctor Last Name</th>
                    <th>Status</th>
                    <th>Appointment Date</th>
                 </tr>
              </thead>
             <%
                  for(BookAppointmentClass bac:myApp)
                  {
              %>
              <tbody>
               <tr>
                   <td><%=bac.getAppointmentId()%></td>
                   <td><%=bac.getPatientId()%></td>
                   <td><%=bac.getPatientFirstName()%></td>
                   <td><%=bac.getPatientLastName()%></td>
                   <td><%=bac.getPatientGender() %></td>
                   <td><%=bac.getPatientAge()%></td>
                   <td><%=bac.getPatientEmail()%></td>
                   <td><%=bac.getPatientMobile()%></td>
                   <td><%=bac.getDoctorId()%></td>
                   <td><%=bac.getDoctorFname()%></td>
                   <td><%=bac.getDoctorLname()%></td>
                   <td><%=bac.getStatus()%></td>
                   <td><%=bac.getAppointmentDate()%></td>
               </tr>
              <%
                  }        
              %>
              </tbody>
            </table>
        </form>
     </div> 
     </div>
  <!--End Of Table Creation-->
      <!--Coding Section End-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
