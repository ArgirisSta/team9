
<!DOCTYPE html>
<html lang="en">
<<<<<<< HEAD
<head>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1" name="viewport">

    <meta content="Short website description" name="description">
    <link href="./assets/favicon.png" rel="icon">

    <title>Register</title>

    <!-- Bootstrap core CSS -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="./assets/css/dashboard.css" rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button aria-controls="navbar" aria-expanded="false" class="navbar-toggle collapsed" data-target="#navbar"
                    data-toggle="collapse" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="./index.html">Project name</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="./login.html">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 main">
            <h1 class="page-header">Register</h1>
            <form action="/register" class="form-horizontal" id="register">
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="email">Email</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="username">Username</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="username" name="username" placeholder="Username" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="firstName">First name</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="firstName" name="firstName" placeholder="First name" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="lastName">Last name</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="lastName" name="lastName" placeholder="Last name" type="text">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="password">Password</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="password" name="password" placeholder="Password" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label" for="specialId">Special ID</label>
                    <div class="col-sm-11">
                        <input class="form-control" id="specialId" name="specialId" placeholder="Special ID number" type="number">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <button class="btn btn-default" type="reset">Reset</button>
                        <button class="btn btn-primary" type="submit">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/js/app.js"></script>

</body>
</html>
=======

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/css/main.css" rel="stylesheet" media="all">
</head>

<body>
<#import "/spring.ftl" as spring />
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Registration Form</h2>
                </div>
                <div class="card-body">
                    <form action="/admin/register" name="registerForm" method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">Full Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <@spring.bind "registerForm.name"/>
                                            <input class="input--style-5" type="text" name="name">
                                            <label class="label--desc">Name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <@spring.bind "registerForm.surname"/>
                                            <input class="input--style-5" type="text" name="surname">
                                            <label class="label--desc">Surname</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">AFM</div>
                            <div class="value">
                                <div class="input-group">
                                    <@spring.bind "registerForm.afm"/>
                                    <input class="input--style-5" type="text" name="afm">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <@spring.bind "registerForm.password"/>
                                    <input class="input--style-5" type="password" name="password">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <@spring.bind "registerForm.email"/>
                                    <input class="input--style-5" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <@spring.bind "registerForm.address"/>
                                    <input class="input--style-5" type="text" name="address">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">User Type</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="userType">
                                            d
                                            <option disabled="disabled" selected="selected">Choose user type</option>
                                            <option>ADMIN</option>
                                            <option>USER</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Plate Number</div>
                            <div class="value">
                                <div class="input-group">
                                    <@spring.bind "registerForm.plateNumber"/>
                                    <input class="input--style-5" type="text" name="plateNumber">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Car Brand</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="carBrand">
                                            <option disabled="disabled" selected="selected">Choose brand</option>
                                            <@spring.bind "registerForm.carBrand"/>
                                            <option>ALFA_ROMEO</option>
                                            <option>BMW</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="/vendor/select2/select2.min.js"></script>
    <script src="/vendor/datepicker/moment.min.js"></script>
    <script src="/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
>>>>>>> 46b00b9d5d5e902ffe4d1ab83b9d1a9223a72ffc
