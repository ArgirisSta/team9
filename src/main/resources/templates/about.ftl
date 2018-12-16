<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../images/favicon.png" rel="icon">

    <title>About</title>

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
      <h1 class="mt-4 mb-3" style="color: #ffffff">About</h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.ftl">Home</a>
        </li>
        <li class="breadcrumb-item active">About</li>
      </ol>

      <!-- Intro Content -->
      <div class="row">
        <div class="col-lg-6">
          <img class="img-fluid rounded mb-4" src="" alt="">
        </div>
        <div class="col-lg-6">

        </div>
      </div>
      <!-- /.row -->

      <!-- Team Members -->
      <h2 style="color: #ffffff">Our Team</h2>

      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="../images/crew1.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted"></h6>
              <p class="card-text">

                */perigrafh/*

              </p>
            </div>
            <div class="card-footer">
              <a href="#">jason@example.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="../images/crew2.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted"></h6>
              <p class="card-text">

                */perigrafh/*

              </p>
            </div>
            <div class="card-footer">
              <a href="#">george@example.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="../images/crew3.png" alt="">
            <div class="card-body">
              <h4 class="card-title">Team Member</h4>
              <h6 class="card-subtitle mb-2 text-muted"></h6>
              <p class="card-text">

                */perigrafh/*

              </p>
            </div>
            <div class="card-footer">
              <a href="#">steve@example.com</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <!-- Our Customers -->
      <h2 style="color: #ffffff">Our Customers</h2>
      <div class="row">
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
        <div class="col-lg-2 col-sm-4 mb-4">
          <img class="img-fluid" src="http://placehold.it/500x300" alt="">
        </div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

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

  </body>

</html>
