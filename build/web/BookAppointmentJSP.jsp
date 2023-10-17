<%-- 
    Document   : BookAppointmentJSP
    Created on : 22 Mar, 2023, 9:14:51 AM
    Author     : Amar Gautam
--%>
<%@page import="com.doc.dao.MethodRelatedPatient"%>
<%@page session="true"%>
 <!doctype html>
  <html lang="en">
   <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Book Appointment</title>
    <script lang="javascript">
       function setDate()
       { 
              var date=new Date();
              var tdate=date.getDate();
               if(tdate<10)
                  {
                     tdate="0"+tdate;
                  }
                  var tmonth=date.getMonth()+1;
                  if(tmonth<10)
                  {
                     tmonth="0"+tmonth;
                  }
                 var tyear=date.getFullYear();
                 var minDate=tyear+"-"+tmonth+"-"+tdate;
                document.getElementById("DATE").setAttribute('min',minDate);
               
                var futureDate=tdate+3;
                var maxDate=tyear+"-"+tmonth+"-"+futureDate;
                document.getElementById("DATE").setAttribute('max',maxDate);
          }
            function validation()
            {
               var dcategory=document.getElementById("DCATEGORY").value;
               var date=document.getElementById("DATE").value;
               if(dcategory=="null")
               {
                   alert("Category Can't be empty.");
                   document.getElementById("DCATEGORY").focus();
                   return(false);
               }
               if(date=="")
               {
                   alert("Date Can't be empty.");
                   document.getElementById("DATE").focus();
                   return(false);
               }
               return(true);
            }
        </script> 
  </head>
  <body>
       <% 
           MethodRelatedPatient mrp=new MethodRelatedPatient();
           int appointmentId=0;
           appointmentId=mrp.AppointmentId();
           session.setAttribute("AppointmentId",appointmentId);
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
               <a class="nav-link" href="MyBookingCheckByPatient.jsp">MyBooking</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">Logout</a>
             </li>
           </ul>
         </div>
        </div>
     </nav>
    <!--end of navigation bar-->
<!--Creation of Booking Appointments Start-->
    <div class="container mt-5">
      <div class="table-responsive"> 
       <form method="post" action="SearchDoctorForAppointment.jsp">
         <table class="table table-striped table-bordered table-hover table-sm">
           <thead class="thead-dark">
               <tr>
                 <th>Appointment Id</th>
                 <th>Categorization</th>
                 <th>Date</th>    
               </tr>
             </thead>
            <tbody>
                <tr>
                   <td><%=appointmentId%></td>
                      <td>
                        <select name="Dcategory" id="DCATEGORY">
                            <option value="null" selected="true">Select Anyone</option>
                            <option value="bones">bones</option>
                            <option value="heart">heart</option>
                            <option value="dentist">dentist</option>
                            <option value="neurologist">neurologist</option>
                            <option value="kidney">kidney</option>
                            <option value="cardiologist">cardiologist</option>
                            <option value="plastic surgeon">plastic surgeon</option>  
                        </select>
                      </td>
                     <td><input type="date" id="DATE" name="appointmentDate" onclick="setDate()"></td>
                </tr>
            </tbody>
            <tfoot>
             <td></td>
             <td style="text-align: center"><input type="submit" value="Search Doctor" style=" background-color: green" onclick="return validation()"></td>
             <td></td>
           </tfoot>
        </table>
      </form>
    </div>
  </div>
   <!--Creation of Booking Appointments Ending-->
   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>