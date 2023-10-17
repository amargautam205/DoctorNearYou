<%-- 
    Document   : SearchDoctorForAppointment
    Created on : 23 Mar, 2023, 9:07:14 AM
    Author     : Amar Gautam
--%>
 <%@page import="com.doc.dao.MethodRelatedPatient"%>
 <%@page import="java.util.List"%>
 <%@page import="com.doc.model.DoctorRegistrationClass"%>
 <!doctype html>
 <html lang="en">
   <head>
    <!--Required meta tags-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>DoctorForAppointment</title>
   </head>
  <body>
     <%
        String category=null;
        category=request.getParameter("Dcategory");
        String date=request.getParameter("appointmentDate");
        session.setAttribute("AppointmentDate",date);
        MethodRelatedPatient mrd=new MethodRelatedPatient();
        DoctorRegistrationClass dr=new DoctorRegistrationClass();
        List<DoctorRegistrationClass>mylist;
        mylist=mrd.searchDoctorForAppointment(category);
     %>
      <!--start of navigation bar-->
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
 <!--end of navigation bar-->
    <!--Coding Section Started-->
     <!--Print Doctor Detail Start-->
     <div class="container mt-5">
       <div class="table-responsive"> 
          <form method="post" action="AppointmentDone.jsp">
            <table class="table table-striped table-bordered table-hover table-sm">
                <thead class="thead-dark">
                  <tr>
                    <th>Doctor Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>  
                    <th>Category</th>
                    <th>Mobile</th>  
                    <th>Address</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <%
                   for(DoctorRegistrationClass d: mylist)
                   {
                %>  
                <tbody>
                 <tr>
                   <td><input type="text" name="DoctorId" value="<%= d.getDid() %>" readonly="true" style="outline:none"></td>
                   <td><%=d.getDfname()%></td>
                   <td><%=d.getDlname()%></td>
                   <td><%=d.getDcategory()%></td>
                   <td><%=d.getDmob()%></td>
                   <td><%=d.getDaddress()%></td>
                   <td><%=date%></td>
                 </tr>
                </tbody>
               <%
                    }        
               %>
             </table>
             <br><center>
                 <tr><h3>Book Appointment</h3></tr>
                 <td><input type="text" name="DoctorIdEnterByUserForAppointment" placeholder="Enter Doctor Id"></td>
                 <input type="submit" value="BookAppointment"></center>
          </form>
       </div>
    </div>   
    <!--Print Doctor Detail End-->
    <!--Coding Section End-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>

