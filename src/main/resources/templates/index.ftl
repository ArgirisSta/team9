<!DOCTYPE html>
<html lang="en" xmlns:display="http://www.w3.org/1999/xhtml">

<head>

    <#include "/partials/head.ftl">

    <title>Car Repair Station</title>

    <!-- Bootstrap core CSS -->

    <#include "/partials/styles.ftl">

</head>

<body>

<!-- Navigation -->

<#include "/partials/sitenavbar.ftl">


<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('../images/carrepair1.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Responsibility</h3>
                    <p>We ensure our customers to relay on us</p>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('../images/carrepair2.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Experience</h3>
                    <p>Our Station works since 1975.</p>
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('../images/carrepair3.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Quick Services</h3>
                    <p>Don't hesitate and come to visit us!</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <h1 class="my-4" align="center" style="color: #ffffff">Welcome to Car Repair Station</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">SMOG CHECK STATION</h4>
                <div class="card-body">
                    <p class="card-text">We perform smog checks on all foreign and domestic vehicles, and if your car doesn’t pass, our expert technicians will complete a thorough diagnostic inspection to determine the cause of the failure and recommend repairs to ensure you pass the second time around.</p>
                </div>
                <div class="card-footer">
                    <a href="services.ftl" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">WHEEL ALIGNMENT</h4>
                <div class="card-body">
                    <p class="card-text">A minor shift in a vehicle’s wheel alignment can lead to major repairs down the road, along with related problems like poor handling and control over your car, lower gas mileage, and faster tire wear. When you bring your car in for a wheel alignment, our certified technicians will use our state-of-the-art, computerized alignment equipment to ensure everything lines up with manufacturer specifications. And in order to confirm all components are functioning properly, we also check the front and rear steering, suspension, and tires as part of our standard wheel alignment service.</p>
                </div>
                <div class="card-footer">
                    <a href="services.ftl" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">GENERAL CAR MAINTENANCE SERVICES</h4>
                <div class="card-body">
                    <p class="card-text">The best defense against expensive repairs is to follow the regular maintenance schedule provided by your vehicle’s manufacturer. In addition to comprehensive 30/60/90K-mile services and tune-ups, we also handle oil changes, timing belt inspections and replacement, suspension system evaluation, and more to keep your vehicle in excellent condition.</p>
                </div>
                <div class="card-footer">
                    <a href="services.ftl" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Section -->


    <!-- /.row -->

    <!-- Features Section -->
    <div class="row">
        <div class="col-lg-6">
            <h2 style="color: #ffffff">Car Repair Station Features</h2>

        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded" src="" alt="">
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
        <div class="col-md-8">
            <p>


            </p>
        </div>
        <div class="col-md-4">
            <a class="btn btn-lg btn-secondary btn-block" href="contact.ftl">Make a Call Now</a>
        </div>
    </div>

</div>
<!-- /.container -->

<!-- Footer -->
<#include "/partials/footer.ftl">

<!-- Bootstrap core JavaScript -->
<#include "/partials/scripts.ftl">

</body>

</html>