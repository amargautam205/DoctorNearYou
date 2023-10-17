<%-- 
    Document   : PatientDetail
    Created on : 16 Mar, 2023, 6:01:40 PM
    Author     : Amar Gautam
--%>
<%@page import="com.doc.model.PatientRegistration"%>
<%@page import="com.doc.dao.MethodRelatedPatient"%>
<%@include file="PatientHomePage.jsp"%>
<%!
  PatientRegistration pr;
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
        int patientId=Integer.parseInt(session.getAttribute("PatientId").toString());
        MethodRelatedPatient mrp=new MethodRelatedPatient();
        pr=mrp.myDetail(patientId);
    %>
    <!--Coding Area End-->
   <!-- Patient Profile Table creation Start-->
   <div class="container mt-5">
       <div class="table-responsive">   
       <table class="table table-striped table-bordered table-hover table-sm">
           <thead class="thead-dark">
               <tr>
                 <th>Patient Id</th>
                 <th>First Name</th>
                 <th>Last Name</th>  
                 <th>Email</th>
                 <th>Gender</th>  
                 <th>Age</th> 
                 <th>Mobile</th> 
                 <th>Password</th>  
               </tr>
           </thead>
           <tbody>
               <tr>
                   <td><%=patientId%></td>
                   <td><%=pr.getPfname()%></td>
                   <td><%=pr.getPlname()%></td>
                   <td><%=pr.getPemail()%></td>
                   <td><%=pr.getPgender()%></td>
                   <td><%=pr.getPage()%></td>
                   <td><%=pr.getMob()%></td>
                   <td><%=pr.getPpassword()%></td>
               </tr>
           </tbody>
         </table>
       </div>
    </div>
   <!--Table Creation End-->

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
