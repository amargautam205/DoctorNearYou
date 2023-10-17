<%@page import="com.doc.dao.MethodRelatedDoctor"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script lang="javascript">
            function validate()
            {
                var id,fname,lname,category,mob,add,pass;
                id=document.getElementById("DID").value;
                fname=document.getElementById("DFNAME").value;
                lname=document.getElementById("DLNAME").value;
                category=document.getElementById("DCATEGORY").value;
                mobile=document.getElementById("DMOBILE").value;
                address=document.getElementById("DADDRESS").value;
                password=document.getElementById("DPASSWORD").value;
                if(id=="")
                {
                    alert("Doctor Id Should Not be blank.");
                    document.getElementById("DID").focus();
                    return(false);
                }
                if(id!="")
                {
                    var ch;
                      for(i=0;i<id.length;i++)
                    {
                       ch=id.charCodeAt(i);
                       if(!(ch>=48 && ch<=57))
                      {
                         alert("Doctor Id  must be digit");
                         document.getElementById("DID").focus();
                         document.getElementById("DID").select();
                         return(false);
                      }
                    }
                }
                if(fname=="")
                {
                    alert("Doctor First Name Should not be blank.");
                    document.getElementById("DFNAME").focus();
                    return(false);
                }
                if(fname!="")
               {
                  var ch;
                  for(i=0;i<fname.length;i++)
                 {
                      ch=fname.charCodeAt(i);
                       if(!((ch>=97&& ch<=122) || (ch>=65&& ch<=90) || (ch==32) || (ch==46)))
                    {
                         alert("First Name allowed only characters.");
                         document.getElementById("DFNAME").focus();
                         document.getElementById("DFNAME").select();
                         return(false);
                    }
                 }
               }
               if(lname=="")
                {
                    alert("Doctor Last Name Should not be empty.");
                    document.getElementById("DLNAME").focus();
                    return(false);
                }
                if(lname!="")
               {
                  var ch;
                  for(i=0;i<lname.length;i++)
                 {
                     ch=lname.charCodeAt(i);
                      if(!((ch>=97&& ch<=122) || (ch>=65&& ch<=90) || (ch==32)))
                    {
                         alert("Last Name allowed only characters.....");
                         document.getElementById("DLNAME").focus();
                         document.getElementById("DLNAME").select();
                         return(false);
                    }
                 }
               }
             if(mobile=="")
             {
                 alert("Mobile Number Should not be empty.");
                 document.getElementById("DMOBILE").focus();
                 return(false);
             }
             if(mobile!="")
             {
                 var ch;
                 for(i=0;i<mobile.length;i++)
                 {
                     ch=mobile.charCodeAt(i);
                     if(!(ch>=48 && ch<=57))
                     {
                         alert("mobile number must be digit");
                         document.getElementById("DMOBILE").focus();
                         document.getElementById("DMOBILE").select();
                         return(false);
                     }
                 }
             }
             if(mobile.length!=10)
             {
                 alert("Mobile Number must be 10 digits only.");
                 document.getElementById("DMOBILE").focus();
                 document.getElementById("DMOBILE").select();
                 return(false);
             }
             if((mobile.charCodeAt(0)!=57)&&(mobile.charCodeAt(0)!=56)&&(mobile.charCodeAt(0)!=55)) 
             {
                 alert("Mobile Number Must be start by 9 or 8 or 7!!");
                 document.getElementById("DMOBILE").focus();
                 document.getElementById("DMOBILE").select();
                 return(false);
             }
              if(address=="")
                {
                    alert("Address Should Not be blank.");
                    document.getElementById("DADDRESS").focus();
                    return(false);
                }
                if(address!="")
               {
                  var ch;
                  for(i=0;i<address.length;i++)
                 {
                     ch=address.charCodeAt(i);
                      if(!((ch>=97&& ch<=122) || (ch>=65&& ch<=90) || (ch==32) ||(ch>=48 && ch<=57)))
                    {
                         alert("Address should be only alphabet,Numberic values.");
                         document.getElementById("DADDRESS").focus();
                         document.getElementById("DADDRESS").select();
                         return(false);
                    }
                 }
               }
               if(password=="")
                {
                    alert("password can't be blank.");
                    document.getElementById("DPASSWORD").focus();
                    document.getElementById("DPASSWORD").select();
                    return(false);
                }
               return(true);
           }
      </script> 
  </head>
  <body>
    <!--Coding Section Started-->
      <% 
                MethodRelatedDoctor mrd=new MethodRelatedDoctor();
                int doctorId=0;
                doctorId=mrd.autoIncrOfDoctor();
      %>
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
        <!--Table Creation Start-->
        <div class="container mt-5">
          <form method="post" action="AddDoctorDataServlet">
            <div class="table-responsive">
             <table class="table table-striped table-borderedless table-hover">
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
                   <td><input type="text" name="did" id="DID" value=<%=doctorId%> readonly="true"></td>
                   <td><input type="text" name="dfname" id="DFNAME"  placeholder="Enter First Name"></td>
                   <td><input type="text" name="dlname" id="DLNAME" placeholder="Enter Last Name"></td>
                   <td>
                       <select name="dcategory" id="DCATEGORY">
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
                   <td><input type="text" name="dmobile" id="DMOBILE" placeholder="Enter Mobile"></td>
                   <td><input type="text" name="daddress" id="DADDRESS" placeholder="Enter Address"></td>
                   <td><input type="text" name="dpassword" id="DPASSWORD" placeholder="Enter Password"></td>
               </tr>
           </tbody>
           <tfoot>
               <tr>
                   <td></td>
                   <td></td>
                    <td style="text-align: center"><input type="submit" value="Insert" style=" background-color: green"></td>                  
                    <td></td>
                    <td></td>
                    <td></td>
               </tr>
           </tfoot>
        </table>
      </div>
    </form>
    </div>
        
        <!--<Table Creation End--> 
    <!--Coding Section End-->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>


<%--
          <form method="post" action="AddDoctorDataServlet">
             <table border="1" class="Table">
                 <u><i><b><h2>Add Doctor</h2></b></i></u>
                  <tr>
                     <th>Doctor Id<font color="red">*</font></th>
                     <td><input type="text" name="did" id="DID" value=<%=did%> readonly="true"></td>
                 </tr>
                 <tr>
                     <th>First Name<font color="red">*</font></th>
                     <td><input type="text" name="dfname" id="DFNAME"  placeholder="Enter First Name"></td>
                 </tr>
                 <tr>
                     <th>Last Name<font color="red">*</font></th>
                     <td><input type="text" name="dlname" id="DLNAME" placeholder="Enter Last Name"></td>
                 </tr>
                 <tr>
                     <th>Categorization<font color="red">*</font></th>
                     <td>
                         <select name="dcategory" id="DCATEGORY">
                            <option value="bones">bones</option>
                            <option value="heart">heart</option>
                            <option value="dentist">dentist</option>
                            <option value="neurologist">neurologist</option>
                            <option value="kidney">kidney</option>
                            <option value="cardiologist">cardiologist</option>
                            <option value="plastic surgeon">plastic surgeon</option> 
                    </select>
                    </td>
                 </tr>
                  <tr>
                     <th>Mobile<font color="red">*</font></th>
                     <td><input type="text" name="dmobile" id="DMOBILE" placeholder="Enter Mobile"></td>
                 </tr>
                 <tr>
                     <th>Address<font color="red">*</font></th>
                     <td><input type="text" name="daddress" id="DADDRESS" placeholder="Enter Address"></td>
                 </tr>
                  <tr>
                     <th>Password<font color="red">*</font></th>
                     <td><input type="text" name="dpassword" id="DPASSWORD" placeholder="Enter Password"></td>
                 </tr>
            </table>
              <tr>
                  <td><input type="submit" value="Submit" onclick="return validate()" class="btn2"></td>
                  <td><input type="reset" value="Reset" class="btn2"></td> 
              </tr>
         </form> --%>