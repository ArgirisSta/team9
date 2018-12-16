<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../images/favicon.png" rel="icon">

    <title>Contact</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/modern-business.css" rel="stylesheet">


  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top" style="background: linear-gradient(to bottom, #4c4c4c 0%,#595959 12%,#666666 25%,#474747 39%,#2c2c2c 50%,#000000 51%,#111111 60%,#2b2b2b 76%,#1c1c1c 91%,#131313 100%); ">
      <div class="container">
        <a class="navbar-brand" href="index.ftl"><img src="../images/logo.png" width="300px" height="80px"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.ftl">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.ftl">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.ftl">Contact</a>
            </li>

          </ul>
        </div>
      </div>
        <form class="navbar-form navbar-right">
        <@spring.bind "registerForm.email"/>
            <input class="form-control" type="text" name="email" id="email" placeholder="Email">
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>
        <@spring.bind "registerForm.password"/>
            <input class="form-control" type="password" name="password" id="password" placeholder="password">
            <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>
            <button type="submit" class="btn btn-success">Sign in</button>
        </form>
    </nav>

    <!-- Page Content -->
    <div class="container">

    <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3" style="color: #ffffff">Contact</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.ftl">Home</a>
        </li>
        <li class="breadcrumb-item active">Contact</li>
      </ol>

      <!-- Content Row -->
      <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
          <!-- Embedded Google Map -->
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12559.638807819576!2d23.81572312769976!3d38.09576557523397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a19e59b431fb77%3A0x478e76c3c6b0c06!2sKastri%2C+Nea+Erythraia+146+71!5e0!3m2!1sen!2sgr!4v1544455025903" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="table">
          <span> <p>  <b> Address :</b> Nea Erithraia Attikh Greece</p> </span>
              <br>
          <p><b>    Postal Code :</b> 18451</p>
              <br>
              <p><b>  Email : </b>projectfutureteam9@gmail.com</p>
              <br>
          <p><b>     Telephone :  </b> 2105898884</p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Contact Form -->
      <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->



      <!-- /.row -->


    <!-- /.container -->
    </div>
    <!-- Footer -->
    <footer class="py-5 bg-dark" style="background: linear-gradient(to bottom, #4c4c4c 0%,#595959 12%,#666666 25%,#474747 39%,#2c2c2c 50%,#000000 51%,#111111 60%,#2b2b2b 76%,#1c1c1c 91%,#131313 100%); ">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Team 9 Project Future 2018 - All Rights Reserved</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="../js/jqBootstrapValidation.js"></script>
    <script src="../js/contact_me.js"></script>


  </body>

</html>
