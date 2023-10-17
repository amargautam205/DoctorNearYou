<%-- 
    Document   : SignIn
    Created on : 26 Feb, 2023, 10:22:14 PM
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
              <link href="css/SignIn.css" rel="stylesheet" type="text/css"/>
              <title>SignIn</title>
             </head>
       <body>
           <!--Coding Area Started-->
           <!--Start Of Login Page Coding-->
         <section class="LoginPage">
           <div class="container text-center py-5"> 
               <h2>Welcome to Login-Page</h2>
               <br><br>
               
               <div class="row">
                        <!--first block of Login-->
                        <div class="col-md-4">
                           <div class="card" style="width: 18rem;">
                               <img src="css/image/LoginPageImage/PatientLoginImage.jpg" class="card-img-top">
                                <div class="card-body">
                                    <button class="btn btn-primary" onclick="document.location='PatientLoginPage.jsp'">Patient</button>
                                </div>
                           </div>   
                        </div>
                        <!--second block of login-->
                        <div class="col-md-4">
                           <div class="card" style="width: 18rem;">
                               <img src="css/image/LoginPageImage/DoctorLoginImage.jpg" class="card-img-top">
                                <div class="card-body">
                                    <button class="btn btn-primary" onclick="document.location='DoctorLoginPage.jsp'">Doctor</button>
                                </div>
                           </div>   
                        </div>
                         <!--Third block of Login-->
                        <div class="col-md-4">
                           <div class="card" style="width: 18rem;">
                               <img src="css/image/LoginPageImage/AdminLoginImage.jpg" class="card-img-top">
                                <div class="card-body">
                                    <button class="btn btn-primary" onclick="document.location='AdminLoginPage.jsp'">Admin</button>
                                </div>
                           </div>   
                        </div>
               </div>
               <br>
               <h3>Wherever the art of medicine is loved, there is also a love of humanity.</h3>
           </div>
        </section>
           <!--End Of Login Page Coding-->
           <!--coding Area Ended-->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
       </body>
</html>


