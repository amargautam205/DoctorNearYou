<%-- 
    Document   : MyBookingCheckByPatient
    Created on : 26 Mar, 2023, 7:37:33 PM
    Author     : Amar Gautam
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.doc.model.BookAppointmentClass"%>
<%@page import="com.doc.dao.MethodRelatedPatient"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  </head>
  <body>
      <%
          int patientId=Integer.parseInt(session.getAttribute("PatientId").toString());
          MethodRelatedPatient mrp=new MethodRelatedPatient();
          List<BookAppointmentClass>myBooking=new ArrayList();
          myBooking=mrp.myBookingDetail(patientId);
      %>
    <!--Coding Section Started-->
    <!--Navigation Bar Start--> 
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container">
          <a class="navbar-brand">Doctor Near You</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                 <a class="nav-link" href="PatientDetail.jsp">My Profile</a>
             </li> 
             <li class="nav-item">
                 <a class="nav-link" href="BookAppointmentJSP.jsp">Book Appointment</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="MyBookingCheckByPatient.jsp">MyBookings</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">Logout</a>
             </li>
          </ul>
        </div>
     </div>
   </nav>
    <!--Navigation Bar End-->
    <!--Table Creation Start-->
    <div class="container mt-5">
       <div class="table-responsive"> 
           <form method="post" action="CancelAppointmentServlet">
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
                  for(BookAppointmentClass bac:myBooking)
                  {
              %>
              <tbody>
                 <tr>
                   <td><input type="text" name="AppointmentId" id="APPOINTMENTID" value="<%=bac.getAppointmentId()%>" readonly="true" style="outline:none"></td>
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
                   <td><input type="text" name="Status" value="<%=bac.getStatus()%>" readonly="true" style=" outline:none"></td>
                   <td><%=bac.getAppointmentDate()%></td>
                 </tr>
              </tbody>
              <%
                  }        
              %>
           </table>
        </form>
      </div> 
    </div>
    <!--Table Creation End-->
    <!--Coding Section End-->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>
