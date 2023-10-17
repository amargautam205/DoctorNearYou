<%@page import="com.doc.dao.MethodRelatedPatient"%>
<!doctype html>
 <html lang="en">
   <head>
     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" rel="stylesheet" type="text/css"/>
     <link href="css/PatientRegistration.css" rel="stylesheet" type="text/css"/>
     <title>Patient Registration</title>
     <script language="javascript">
           function validate()
           {
                 var pid,fname,lname,email,gender,age,mobile,pass;
                 pid=document.getElementById("PID").value;
                 fname=document.getElementById("PFNAME").value;
                 lname=document.getElementById("PLNAME").value;
                 email=document.getElementById("PEMAIL").value;
                 gender=document.getElementById("PGENDER").value;
                 age=document.getElementById("PAGE").value;
                 mobile=document.getElementById("PMOBILE").value;
                 pass=document.getElementById("PPASS").value;
                 
               if(fname=="")
               {
                 alert("Name Can't be blank.....");
                 document.getElementById("PFNAME").focus();
                 return(false);
               }
               if(fname!="")
               {
                  var ch;
                  for(i=0;i<fname.length;i++)
                 {
                     ch=fname.charCodeAt(i);
                      if(!((ch>=97&& ch<=122) || (ch>=65&& ch<=90) || (ch==32)))
                    {
                         alert("Name allowed only characters.....");
                         document.getElementById("PFNAME").focus();
                         document.getElementById("PFNAME").select();
                         return(false);
                    }
                 }
               }
             
              if(lname=="")
              {
                 alert("Last Name Can't be blank.....");
                 document.getElementById("PLNAME").focus();
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
                         alert(" Last Name allowed only characters");
                         document.getElementById("PLNAME").focus();
                         document.getElementById("PLNAME").select();
                         return(false);
                    }
                 }
             } 
             if(email=="")
             {
                 alert("Email Can't be blank.....");
                 document.getElementById("PEMAIL").focus();
                 return(false);
             }
             if(email!="")
             {
                 if(email.indexOf('@')==-1)
                 {
                   alert("invalid email");
                   document.getElementById("PEMAIL").focus();
                   document.getElementById("PEMAIL").select();
                   return(false);
                 }
             }
             if(age=="")
             {
                 alert("Age should not be blank.");
                 document.getElementById("PAGE").focus();
                 return(false);
             }
             if(age!="")
             {
                 var ch;
                 for(i=0;i<age.length;i++)
                 {
                     ch=age.charCodeAt(i);
                     if(!(ch>=48 && ch<=57))
                     {
                         alert("Age must be digit");
                         document.getElementById("PAGE").focus();
                         document.getElementById("PAGE").select();
                         return(false);
                     }
                 }
             }
            if(!(age>=1 && age<=110))
             {
                 alert("Please enter valid age between 1 to 110");
                 document.getElementById("PAGE").focus();
                 document.getElementById("PAGE").select();
                 return(false);
             }
              if(mobile=="")
             {
                 alert("Mobile Number Should not be empty.");
                 document.getElementById("PMOBILE").focus();
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
                         document.getElementById("PMOBILE").focus();
                         document.getElementById("PMOBILE").select();
                         return(false);
                     }
                 }
             }
             if(mobile.length!=10)
             {
                 alert("Mobile Number must be 10 digits only.");
                 document.getElementById("PMOBILE").focus();
                 document.getElementById("PMOBILE").select();
                 return(false);
             }
             if((mobile.charCodeAt(0)!=57)&&(mobile.charCodeAt(0)!=56)&&(mobile.charCodeAt(0)!=55) && (mobile.charCodeAt(0)!=54)) 
             {
                 alert("Mobile Number Must be start by 9 or 8 or 7 or 6");
                 document.getElementById("PMOBILE").focus();
                 document.getElementById("PMOBILE").select();
                 return(false);
             }
             if(pass=="")
             {
                 alert("password Should not be blank.....!!");
                 document.getElementById("PPASS").focus();
                 document.getElementById("PPASS").select();
                 return(false);
             }
             alert("Please Notedown Your Patient Id...!!!"+" "+pid);
             return(true);
           }        
        </script>
  </head>
  <body>
      <%
            MethodRelatedPatient mrp=new MethodRelatedPatient();
            int pid;
            pid=mrp.autoIncrOfPatientId();
       %>
    <!--SignUp Form Creation start -->
    <!--account creation start-->
    <div class="container">
        <div class="card bg-light">
            <div class="card-body mx-auto">
                <h4 class="card-title mt-3 text-center">Account Creation For Patient Only!!!</h4>
                <p class="text-center">Take Your Medicine Properly</p>
            </div> 
            <!--Sign Up form creation start here-->
            <form method="post" action="InsertPatientDataServlet">
                <div class="form-group">
                   <label>Patient-Id</label><font color="red">*</font>
                   <input type="text" class="form-control" id="" value=<%=pid%> readonly="true">
                   <input type="hidden" name="pid" id="PID" value=<%=pid%>>
                   <small  class="form-text text-muted">We'll never share your Identity with anyone else.</small>
                </div>
                <div class="form-group">
                   <label >First-Name</label><font color="red">*</font>
                   <input type="text" class="form-control" name="pfname" id="PFNAME"  placeholder="Enter First Name">
                </div>
                 <div class="form-group">
                   <label>Last-Name</label><font color="red">*</font>
                   <input type="text" class="form-control" name="plname" id="PLNAME"  placeholder="Enter Last Name">
                 </div>
                <div class="form-group">
                   <label>Email</label><font color="red">*</font>
                   <input type="email" class="form-control" name="pemail" id="PEMAIL" placeholder="Enter Your Email">
                 </div>
                <div class="form-group">
                    <label>Gender</label><font color="red">*</font><br>
                     <select style="background-color:#e6e6e6" name="pgender" id="PGENDER">
                        <option value="male">male</option>
                        <option value="female">female</option>
                        <option value="trans-gender">trans-gender</option>
                   </select>
                 </div>
                 <div class="form-group">
                   <label>Age</label><font color="red">*</font>
                   <input type="text" class="form-control" name="page" id="PAGE" placeholder="Enter Your Age">
                  </div>
                <div class="form-group">
                   <label>Mobile</label><font color="red">*</font>
                   <input type="text" class="form-control" name="pmobile" id="PMOBILE" placeholder="Enter Your Mobile number">
                 </div>
                <div class="form-group">
                   <label>Password</label><font color="red">*</font>
                   <input type="text" class="form-control" name="ppass" id="PPASS" placeholder="Enter Your Password">
                 </div>
                <button class="btn btn-primary btn-block" onclick="return validate()">Register</button>
           </form>
         <!--Sign up form creation end here-->
        </div>
    </div>
    <!-- SignUp Form Creation End -->    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </body>
</html>


<%--
<%@page import="com.doc.dao.MethodRelatedPatient"%>
<html>
    <head>
       <title>Patient Registration Page</title>
       <link href="css/PatientRegistration.css" rel="stylesheet" type="text/css"/>
       <script language="javascript">
           function validate()
           {
                 var pid,fname,lname,email,gender,age,mobile,pass;
                 pid=document.getElementById("PID").value;
                 fname=document.getElementById("PFNAME").value;
                 lname=document.getElementById("PLNAME").value;
                 email=document.getElementById("PEMAIL").value;
                 gender=document.getElementById("PGENDER").value;
                 age=document.getElementById("PAGE").value;
                 mobile=document.getElementById("PMOBILE").value;
                 pass=document.getElementById("PPASS").value;
                 
               if(fname=="")
               {
                 alert("Name Can't be blank.....");
                 document.getElementById("PFNAME").focus();
                 return(false);
               }
               if(fname!="")
               {
                  var ch;
                  for(i=0;i<fname.length;i++)
                 {
                     ch=fname.charCodeAt(i);
                      if(!((ch>=97&& ch<=122) || (ch>=65&& ch<=90) || (ch==32)))
                    {
                         alert("Name allowed only characters.....");
                         document.getElementById("PFNAME").focus();
                         document.getElementById("PFNAME").select();
                         return(false);
                    }
                 }
               }
             
              if(lname=="")
              {
                 alert("Last Name Can't be blank.....");
                 document.getElementById("PLNAME").focus();
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
                         alert(" Last Name allowed only characters");
                         document.getElementById("PLNAME").focus();
                         document.getElementById("PLNAME").select();
                         return(false);
                    }
                 }
             } 
             if(email=="")
             {
                 alert("Email Can't be blank.....");
                 document.getElementById("PEMAIL").focus();
                 return(false);
             }
             if(email!="")
             {
                 if(email.indexOf('@')==-1)
                 {
                   alert("invalid email");
                   document.getElementById("PEMAIL").focus();
                   document.getElementById("PEMAIL").select();
                   return(false);
                 }
             }
             if(age=="")
             {
                 alert("Age should not be blank.");
                 document.getElementById("PAGE").focus();
                 return(false);
             }
             if(age!="")
             {
                 var ch;
                 for(i=0;i<age.length;i++)
                 {
                     ch=age.charCodeAt(i);
                     if(!(ch>=48 && ch<=57))
                     {
                         alert("Age must be digit");
                         document.getElementById("PAGE").focus();
                         document.getElementById("PAGE").select();
                         return(false);
                     }
                 }
             }
            if(!(age>=1 && age<=110))
             {
                 alert("Please enter valid age between 1 to 110");
                 document.getElementById("PAGE").focus();
                 document.getElementById("PAGE").select();
                 return(false);
             }
              if(mobile=="")
             {
                 alert("Mobile Number Should not be empty.");
                 document.getElementById("PMOBILE").focus();
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
                         document.getElementById("PMOBILE").focus();
                         document.getElementById("PMOBILE").select();
                         return(false);
                     }
                 }
             }
             if(mobile.length!=10)
             {
                 alert("Mobile Number must be 10 digits only.");
                 document.getElementById("PMOBILE").focus();
                 document.getElementById("PMOBILE").select();
                 return(false);
             }
             if((mobile.charCodeAt(0)!=57)&&(mobile.charCodeAt(0)!=56)&&(mobile.charCodeAt(0)!=55) && (mobile.charCodeAt(0)!=54)) 
             {
                 alert("Mobile Number Must be start by 9 or 8 or 7 or 6");
                 document.getElementById("PMOBILE").focus();
                 document.getElementById("PMOBILE").select();
                 return(false);
             }
             if(pass=="")
             {
                 alert("password Should not be blank.....!!");
                 document.getElementById("PPASS").focus();
                 document.getElementById("PPASS").select();
                 return(false);
             }
             alert("Please Notedown Your Patient Id...!!!"+" "+pid);
             return(true);
           }        
        </script>
    </head>
      <body>   
          <%
               MethodRelatedPatient mrp=new MethodRelatedPatient();
                int pid;
                pid=mrp.autoIncrOfPatientId();
          %>
      
          <header>
              <nav class="nav1">
                <div id="regheading">
                    <h1>Patient Registration Here</h1>
                </div>
               <div class="RegistrationBox">
                   <img src="css/image/avtar.jpg" id="regavtar">
                      <form method="post" action="InsertPatientDataServlet">
                       <th>Patient Id</th><font color="red">*</font>
                       <input type="text" value=<%=pid%> readonly="true">
                       <input type="hidden" name="pid" id="PID" value=<%=pid%>> 
                       <th>First Name</th><font color="red">*</font>
                       <input type="text" name="pfname" id="PFNAME"  placeholder="Enter First Name">
                       <th>Last Name</th><font color="red">*</font>
                       <input type="text" name="plname" id="PLNAME"  placeholder="Enter Last Name">
                       <th>Email</th><font color="red">*</font>
                       <input type="email" name="pemail" id="PEMAIL" placeholder="Enter Your Email">
                        <th>Gender</th><font color="red">*</font><br>
                        <select style="background-color:#e6e6e6" name="pgender" id="PGENDER">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="trans-gender">trans-gender</option>
                        </select>
                        <br><br>
                        <th>Age</th><font color="red">*</font>
                         <input type="text" name="page" id="PAGE" placeholder="Enter Your Age">
                         <th>Mobile</th><font color="red">*</font>
                        <input type="text" name="pmobile" id="PMOBILE" placeholder="Enter Your Mobile number">
                        <th>Password</th><font color="red">*</font>
                        <input type="password" name="ppass" id="PPASS" placeholder="Enter Your Password">
                        <input type="submit" value="Register" onclick="return validate()">
                        <a href="PatientLoginPage.jsp">Have An Account?</a>
                  </form>
               </div>
          </header>
       </body>
     </html> --%>
