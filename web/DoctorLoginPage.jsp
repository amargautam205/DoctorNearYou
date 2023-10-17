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
              <link href="css/DoctorLoginPage.css" rel="stylesheet" type="text/css"/>
              <title>DoctorLogin</title>
              <script lang="javascript">
            function validate()
            {
                var did,dpass;
                did=document.getElementById("DID").value;
                dpass=document.getElementById("DPASS").value;
                if(did=="")
                {
                    alert("Doctor Id Can't be Empty.");
                    document.getElementById("DID").focus();
                    return(false);
                }
                if(did!="")
                {
                    var ch;
                    for(i=0;i<did.length;i++)
                    {
                       ch=did.charCodeAt(i);
                      if(!(ch>=48 && ch<=57))
                       {
                           alert("Doctor Id must be Digit only.");
                           document.getElementById("DID").focus();
                           document.getElementById("DID").select();
                           return(false);
                       }
                    }
                }
                if(dpass=="")
                {
                    alert("Doctor Password Can't be Empty.");
                    document.getElementById("DPASS").focus();
                    document.getElementById("DPASS").select();
                    return(false);
                }
                 return(true);
            }
        </script>
             </head>
       <body>
           <!--Coding Area Started-->
           <!--Login Form Creation-->
           <h1>Doctor Login Here!!!</h1><br>
         <div class="LoginBoxOfDoctor">
            <form method="post" action="CheckDoctorLoginServlet">
                <th>Doctor-Id</th><font color="red">*</font>
                <input type="text" name="did"  id="DID" placeholder="Enter Doctor Id">
                <th>Password</th><font color="red">*</font>
                <input type="password" name="dpass" id="DPASS" placeholder="Enter Password"> 
                <input type="submit"  value="Login" onclick=" return validate()">
                <a href="#">Forget Password?</a>
            </form>
        </div>      
           <!--Login Form End-->
           <!--coding Area Ended-->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
       </body>
</html>

















































<%-- 
    Document   : DoctorLoginPage
    Created on : 18 Feb, 2023, 3:44:14 PM
    Author     : Amar Gautam

<html>
    <head>
        <title>Doctor Login Page</title>
        <link href="css/DoctorLoginPage.css" rel="stylesheet" type="text/css"/>
        <script lang="javascript">
            function validate()
            {
                var did,dpass;
                did=document.getElementById("DID").value;
                dpass=document.getElementById("DPASS").value;
                if(did=="")
                {
                    alert("Doctor Id Can't be Empty.");
                    document.getElementById("DID").focus();
                    return(false);
                }
                if(did!="")
                {
                    var ch;
                    for(i=0;i<did.length;i++)
                    {
                       ch=did.charCodeAt(i);
                      if(!(ch>=48 && ch<=57))
                       {
                           alert("Doctor Id must be Digit only.");
                           document.getElementById("DID").focus();
                           document.getElementById("DID").select();
                           return(false);
                       }
                    }
                }
                if(dpass=="")
                {
                    alert("Doctor Password Can't be Empty.");
                    document.getElementById("DPASS").focus();
                    document.getElementById("DPASS").select();
                    return(false);
                }
                 return(true);
            }
        </script>
    </head>
    <body>
        <img src="img/img1.jpg" class="ImageOfDoctorLogin">
        <div class="LoginBoxOfDoctor">
            <img src="img/avtardoc.jpg" class="avtar">
            <h1>Doctor Login Here!!!</h1>
            <form method="post" action="CheckDoctorLoginServlet">
                <th>DoctorId</th><font color="red">*</font>
                <input type="text" name="did"  id="DID" placeholder="Enter Doctor Id">
                <th>Password</th><font color="red">*</font>
                <input type="password" name="dpass" id="DPASS" placeholder="Enter Password"> 
                <input type="submit"  value="Login" onclick=" return validate()">
                <a href="#">Forget Password?</a>
            </form>
        </div>
    </body>
</html>--%>
