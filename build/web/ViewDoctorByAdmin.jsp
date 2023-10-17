<%-- 
    Document   : ViewDoctorByAdmin
    Created on : 23 Mar, 2023, 7:35:20 PM
    Author     : Amar Gautam
--%>
<%@page import="java.util.List"%>
<%@page import="com.doc.model.DoctorRegistrationClass"%>
<%@page import="com.doc.dao.MethodRelatedDoctor"%>
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
    <!--Coding Section Started-->
      <% 
          MethodRelatedDoctor mrd=new MethodRelatedDoctor();
          List<DoctorRegistrationClass>dr;
          dr=mrd.searchAllDoctor();
      %>
     <!--Start of Navigation Bar-->
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container">
          <a class="navbar-brand">Doctor Near You</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
             <li class="nav-item">
                 <a class="nav-link" href="AddDoctorByAdmin.jsp">Add Doctor</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="ViewDoctorByAdmin.jsp">View Doctor</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="ViewPatientByAdmin.jsp">View Patient</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">Logout</a>
             </li>
          </ul>
        </div>
     </div>
   </nav>
     <!--End of Navigation Bar-->
     <!--Table Creation Start-->
     <div class="container mt-5">
       <div class="table-responsive">   
       <table class="table table-striped table-bordered table-hover">
           <thead class="thead-dark">
               <tr>
                 <th>Doctor Id</th>
                 <th>First Name</th>
                 <th>Last Name</th>  
                 <th>Category</th>
                 <th>Mobile</th>  
                 <th>Address</th> 
                 <th>Password</th>  
               </tr>
           </thead>
            <%
                for(DoctorRegistrationClass drc:dr)
                {
           %>
           <tbody>
               <tr>
                   <td><%=drc.getDid()%></td>
                   <td><%=drc.getDfname()%></td>
                   <td><%= drc.getDlname()%></td>
                   <td><%= drc.getDcategory() %></td>
                   <td><%=drc.getDmob() %></td>
                   <td><%= drc.getDaddress() %></td>
                   <td><%=drc.getDpass() %></td>
               </tr>
           </tbody>
            <%
                }        
            %>
         </table>
       </div>
    </div>
     <!--Table Creation End-->
    <!--Coding Section End-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
