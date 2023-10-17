<%-- 
    Document   : PatientLoginPage
    Created on : 17 Feb, 2023, 7:47:51 PM
    Author     : Amar Gautam
--%>
<!doctype html>
   <html lang="en">
     <head>
      <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
               <!-- Bootstrap CSS -->
              <link rel="preconnect" href="https://fonts.googleapis.com">
              <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
              <link href="https://fonts.googleapis.com/css2?family=Shantell+Sans&display=swap" rel="stylesheet">
              <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
              <link href="css/PatientLoginPage.css" rel="stylesheet" type="text/css"/>
              <title>Patient Registration Page</title>
           <script lang="javascript">
            function validate()
            {
                var pid,ppassword;
                pid=document.getElementById("PID").value;
                ppassword=document.getElementById("PPASS").value;
                if(pid=="")
                {
                    alert("Patient id  could Not be blank...!");
                    document.getElementById("PID").focus();
                    document.getElementById("PID").select();
                    return(false);
                }
                if(pid!="")
                {
                    var ch;
                      for(i=0;i<pid.length;i++)
                    {
                       ch=pid.charCodeAt(i);
                       if(!(ch>=48 && ch<=57))
                      {
                         alert("Patient Id  must be digit");
                         document.getElementById("PID").focus();
                         document.getElementById("PID").select();
                         return(false);
                      }
                    } 
                }
                 if(ppassword=="")
                {
                    alert("password can't be blank...!");
                    document.getElementById("PPASS").focus();
                    document.getElementById("PPASS").select();
                    return(false);
                }
                return(true);
            }
        </script>
             </head>
       <body>
           <!--Coding Area Started-->
           <!--Login Form Creation-->
           <h1>Patient Login Here!!!</h1><br>
           <div class="LoginBoxOfPatient">
               <form method="post" action="CheckPatientLoginServlet">
                <th>Patient-Id</th><font color="red">*</font>
                <input type="text" name="pid"  id="PID" placeholder="Enter PatientId">
                <th>Password</th><font color="red">*</font>
                <input type="password" name="ppass" id="PPASS" placeholder="Enter Password"> 
                <input type="submit"  value="Login" onclick=" return validate()">
                <a href="#">Forget Password?</a><br>
                <a href="PatientRegistration.jsp">Don't have an account?</a>
               </form>
           </div>        
           <!--Login Form End-->
           <!--coding Area Ended-->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
       </body>
</html>






































<%--
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/PatientLoginPage.css" rel="stylesheet" type="text/css"/>
        <script lang="javascript">
            function validate()
            {
                var pid,ppassword;
                pid=document.getElementById("PID").value;
                ppassword=document.getElementById("PPASS").value;
                if(pid=="")
                {
                    alert("Patient id  could Not be blank...!");
                    document.getElementById("PID").focus();
                    document.getElementById("PID").select();
                    return(false);
                }
                if(pid!="")
                {
                    var ch;
                      for(i=0;i<pid.length;i++)
                    {
                       ch=pid.charCodeAt(i);
                       if(!(ch>=48 && ch<=57))
                      {
                         alert("Patient Id  must be digit");
                         document.getElementById("PID").focus();
                         document.getElementById("PID").select();
                         return(false);
                      }
                    } 
                }
                 if(ppassword=="")
                {
                    alert("password can't be blank...!");
                    document.getElementById("PPASS").focus();
                    document.getElementById("PPASS").select();
                    return(false);
                }
                return(true);
            }
        </script>
    </head>
    <body>
        <img src="img/i6.jpg" class="ImageOfPatientLogin">
        <div class="LoginBoxOfPatient">
                <h1>Patient Login Here!!!</h1>
                <form method="post" action="CheckPatientLoginServlet">
                <th>PatientId</th><font color="red">*</font>
                <input type="text" name="pid"  id="PID" placeholder="Enter PatientId">
                <th>Password</th><font color="red">*</font>
                <input type="password" name="ppass" id="PPASS" placeholder="Enter Password"> 
                <input type="submit"  value="Login" onclick=" return validate()">
                <a href="#">Forget Password?</a><br>
                <a href="PatientRegistration.jsp">Don't have an account?</a>
            </form>
        </div>
    </body>
</html>
--%>