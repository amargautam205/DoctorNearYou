<%-- 
    Document   : DoctorDetail
    Created on : 16 Mar, 2023, 8:25:49 PM
    Author     : Amar Gautam
--%>
 <%@page import="com.doc.model.DoctorRegistrationClass"%>
 <%@page import="com.doc.dao.MethodRelatedDoctor"%>
 <%@include file="DoctorHomePage.jsp"%>
 <%!
    DoctorRegistrationClass drc;
 %>
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
    <!--Coding Area Start-->
    <%
        int doctorId=Integer.parseInt(session.getAttribute("doctorId").toString());
        MethodRelatedDoctor mrd=new MethodRelatedDoctor();
        drc=mrd.detailOfDoctor(doctorId);
    %>
   <!-- Doctor Profile Table creation Start-->
   <div class="container mt-5">
       <div class="table-responsive">   
       <table class="table table-striped table-bordered table-hover table-sm">
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
           <tbody>
               <tr>
                   <td><%= drc.getDid()%></td>
                   <td><%= drc.getDfname()%></td>
                   <td><%= drc.getDlname()%></td>
                   <td><%= drc.getDcategory() %></td>
                   <td><%= drc.getDmob() %></td>
                   <td><%=drc.getDaddress() %></td>
                   <td><%=drc.getDpass()%></td>
               </tr>
           </tbody>
         </table>
       </div>
    </div>
   <!--Doctor Profile Table Creation End-->
   <!--Coding Area End-->
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