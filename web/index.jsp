<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Catamaran:wght@500&family=Mulish&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="css/index.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>DocNearU!</title>
  </head>
  <body>
  <!--coding start-->
  <!--start of nav bar-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
          <a class="navbar-brand" >Doctor Near You</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Services.jsp">Services</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="About.jsp">About</a>
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" href="PatientRegistration.jsp">Sign-Up</a>
                 </li>
              </ul>
            </div>     
      </div>
</nav>
  <!--end of nav bar--> 
  
  <!--Start of Header Section-->
  <header class="header">
      <div class="container h-100">
          <div class="row h-100 align-items-center">
              <div class="col-md-12 text-center">
                  <h1>Welcome to Doctor Near You</h1>
                  <p style="text-align:center">Doctors are one of the most important people in our society.
                    They are lifesavers.
                    They are the first ones to lend a helping hand when someone is struggling.
                    Many parents dream that their children might become doctors in the future.
                    Doctors are the ones who have a lot of knowledge about all diseases.</p>
                  <button class=" btn btn-primary" onclick="document.location='SignIn.jsp'">Start Login!</button>
              </div>
          </div>
      </div>
  </header>
  <!--end of header section-->
  <!--start of message section-->
  
  <section class="message py-5">
      <div class="container text-center">
          <h3>We've got what you Need!</h3>
          <p style="text-align: justify">
              Doctors help in healing people when they are sick or have injured themselves.
              They diagnose the condition, and prescribe medicines and other treatment that need to be taken to get back to normal health. Specialist doctors are experts in treating diseases of a particular part of the body. 
              Doctors work in clinics and hospitals. They conduct various tests to diagnose the ailment afflicting a person. Doctors may prescribe medicines that need to be consumed orally or administered through injections. Doctors must attend to their patients promptly. The timely treatment of a sick person can save the life of the person.
          </p>
      </div>
  </section>
  <!--End of Message Section-->
  
  <!--start of services section-->
  <section class="services">
      <div class="container text-center py-5"> 
          <h3>About Our Services</h3>
          <div class="row">
              <!--first card-->
                 <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                               <h4>11000+ Healing Hands</h4>
                                <p style="text-align: justify">
                                   Largest network of the world's finest and brightest medical experts who provide compassionate care using outstanding expertise.
                                </p>
                            </div>
                        </div>
                 </div>
             <!--second card-->
                 <div class="col-md-4">
                        <div class="card">
                         <div class="card-body">
                             <h4>Advance Healthcare Technology</h4>
                             <p style="text-align: justify">
                                 E-Hospitals has been the pioneer in bringing ground-breaking health care technologies to India.Robotic systems are being developed.
                             </p>
                         </div>
                        </div>
                 </div>
             <!--Third card-->
             <div class="col-md-4">
                        <div class="card">
                         <div class="card-body">
                             <h4>Best Clinical Outcomes</h4>
                             <p style="text-align: justify">
                               Leveraging its vast medical expertise & technological advantage, E-Hospitals has consistently delivered best in class clinical outcomes.
                             </p>
                         </div>
                    </div>
             </div>
          </div>
      </div>
  </section>
  <!--End of services section-->
  <!--start of book appointment section-->
  
  <section class="AppointmentSection">
      <div class="container text-center py-5"> 
          <h3>Book an appointment for an in-clinic consultation</h3>
          <div class="row">
              <!--first block of doctor-->
              <div class="col-md-4">
               <div class="card" style="width: 18rem;">
                  <img src="css/image/appointment gallery/DentalCare.jpg" class="card-img-top">
                  <div class="card-body">
                    <h4 class="card-title">Dentist</h4>
                    <p class="card-text">Teething Trouble ? Schedule a dental checkup.</p>
                 </div>
               </div>   
              </div>
              <!--second block of doctor-->
              <div class="col-md-4">
                  <div class="card" style="width: 18rem;">
                  <img src="css/image/appointment gallery/physiotherapist.jpg" class="card-img-top">
                  <div class="card-body">
                     <h4 class="card-title">Physiotherapist</h4>
                     <p class="card-text">Pulled a muscle ? get it treated by a trained physiotherapist.</p>
                   </div>
                  </div> 
              </div>
              <!--Third block of doctor-->
              <div class="col-md-4">
                  <div class="card" style="width: 18rem;">
                  <img src="css/image/appointment gallery/PlasticSurgery.jpg" class="card-img-top">
                    <div class="card-body">
                    <h4 class="card-title">Plastic Surgeon</h4>
                    <p class="card-text">Need to get operated ? find right surgeon.</p>
                    </div>
                 </div>  
              </div>
              <!--Fourth block of doctor-->
              <div class="col-md-4">
                  <div class="card" style="width: 18rem;">
                  <img src="css/image/appointment gallery/orthopedic.jpg" class="card-img-top">
                  <div class="card-body">
                    <h4 class="card-title">Orthopedist</h4>
                    <p class="card-text">For Bone and joint issues,spinal injuries and more.</p>
                 </div>
               </div> 
              </div>
              <!--Fifth block of doctor-->
              <div class="col-md-4">
                  <div class="card" style="width: 18rem;">
                  <img src="css/image/appointment gallery/Cardiologist.jpg" class="card-img-top">
                  <div class="card-body">
                    <h4 class="card-title">Cardiologist</h4>
                    <p class="card-text"> Problem related heart ? A physician who's an expert in the care of your heart and blood vessels.</p>
                 </div>
               </div> 
              </div>
              <!--six block of doctor-->
              <div class="col-md-4">
                  <div class="card" style="width: 18rem;">
                      <img src="css/image/appointment gallery/nephrology.jpg" class="card-img-top" height="200rem">
                  <div class="card-body">
                    <h4 class="card-title">Nephrologist</h4>
                    <p class="card-text">Nephrologists are medical doctors who specialize in the care of kidneys..</p>
                 </div>
               </div> 
              </div> 
          </div>
      </div>
  </section>
  <!--End of book appointment section-->
  
  <!--start download section-->
  <section class="message py-5">
      <div class="container text-center">
          <h3>Download The DoctorNearYou App</h3>
          <p>
              Take consultation with India?s top doctors on the DoctorNearYou. Connect with doctors online, available 24/7, from the comfort of your home.     
          </p>
          <button class=" btn btn-primary">Download</button>
      </div>
  </section>
  <!--end of download section-->
  
  <!--start of contact section-->
  <section class="contact">
      <div class="container text-center py-5">
          <h3>Let's get in touch.</h3>
          <p>
              Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible! 
          </p>
          <i class="fa fa-phone text-warning" style="font-size:36px"></i>&nbsp &nbsp;
          <i class="fa fa-heart text-danger" style="font-size:48px"></i>
          <p>+91-8962155715</p>
           <p>www.DocNearYou.co.in</p>
      </div>
  </section>
  <!--end of contact section-->
  <!--start of link section-->
  <section class="message py-5">
      <div class="container text-center">
          <h3>Important Links</h3>
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <p>Facebook</p>
                      <p>Twitter</p>
                      <p>Instagram</p>
                      <p>Google</p>
                  </div>
              </div>
          </div>
          <button class=" btn btn-primary">Thanks</button>
      </div>
  </section>
  <!--End of Link section-->
  <!--start of footer section-->
  <section class="footer bg-dark">
      <div class="container py-5 text-center text-white ">
          <p>Copyright © 2017,DoctorNearYou. All rights reserved.</p>
      </div>
  </section>
  <!--end of footer section-->
  <!--coding end-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="javascript/index.js" type="text/javascript"></script>
  </body>
</html>