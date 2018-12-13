<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/favicon.png" rel="icon">

    <title>Add New Owner</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap2.min.css" rel="stylesheet">
    <link href="/css/dashboard.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/simple-sidebar.css" rel="stylesheet">

</head>

<body>
<#import "/spring.ftl" as spring />


<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="Home.html"> <img src="./css/logo.png" width="200px" height="80px"></a>
            </li>
            <li>
                <a href="Home.html">Home</a>
            </li>
            <li>
                <a href="Repairs.html">Repairs</a>
            </li>
            <li>
                <a href="Users.html">Owners</a>
            </li>
            <li>
                <a href="addUser.html">Add new user</a>
            </li>
            <li>
                <a href="addRepair.html">Add new repair</a>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        <div class="container-fluid">
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Add New Owner</h1>

                <form id="create-user" action="/admin/register" name="registerForm" class="form-horizontal"
                      method="POST"
                ">

                <div class="form-group">
                    <label class="col-sm-1 control-label" for="name">First Name</label>
                    <div class="col-sm-11">
                        <@spring.bind "registerForm.name"/>
                        <input class="form-control" id="name" name="name" placeholder="First Name"
                               type="text"/>
                        <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label" for="surname">Surname</label>
                <div class="col-sm-11">
                    <@spring.bind "registerForm.surname"/>
                    <input class="form-control" id="surname" name="surname" placeholder="Surname"
                           type="text"/>
                    <#list spring.status.errorMessages as error>
                    <span>${error}</span>
                </#list>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label" for="afm">AFM</label>
            <div class="col-sm-11">
                <@spring.bind "registerForm.afm"/>
                <input class="form-control" id="afm" name="afm" placeholder="AFM" type="text"/>
                <#list spring.status.errorMessages as error>
                <span>${error}</span>
            </#list>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label" for="password">Password</label>
        <div class="col-sm-11">
            <@spring.bind "registerForm.password"/>
            <input class="form-control" id="password" name="password" placeholder="" type="password"/>
            <#list spring.status.errorMessages as error>
            <span>${error}</span>
        </#list>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-1 control-label" for="email">Email</label>
    <div class="col-sm-11">
        <@spring.bind "registerForm.email"/>
        <input class="form-control" id="email" name="email" placeholder="example@email.com" type="email"/>
        <#list spring.status.errorMessages as error>
        <span>${error}</span>
    </#list>
</div>
</div>
<div class="form-group">
    <label class="col-sm-1 control-label" for="address">Address</label>
    <div class="col-sm-11">
        <@spring.bind "registerForm.address"/>
        <input class="form-control" id="address" name="address" placeholder="address" type="text"/>
        <#list spring.status.errorMessages as error>
        <span>${error}</span>
    </#list>
</div>
</div>
<div class="form-group">
<label class="col-sm-1 control-label" for="userType">Role</label>
<div class="col-sm-11">
    <@spring.bind "registerForm.userType"/>
    <select class="form-control" id="userType" name="userType">
        <option value="" disabled selected>Select the role for the user</option>
        <option value="ADMIN">Administrator</option>
        <option value="USER">USER</option>
    </select>
    <#list spring.status.errorMessages as error>
    <span>${error}</span>
</#list>
</div>
        </div>
<div class="form-group">
<label class="col-sm-1 control-label" for="plateNumber">Plate Number</label>
<div class="col-sm-11">
    <@spring.bind "registerForm.plateNumber"/>
    <input class="form-control" id="plateNumber" name="plateNumber" placeholder="ABC-1234" type="text"/>
    <#list spring.status.errorMessages as error>
    <span>${error}</span>
</#list>
</div>
        </div>
<div class="form-group">
<label class="col-sm-1 control-label" for="type"> Car Brand</label>
<@spring.bind "registerForm.carBrand"/>
<div class="col-sm-11">
    <select class="form-control" id="carBrand" name="carBrand">
        <option selected value="">Select the brand of the car</option>
        <option value="ALFA_ROMEO">Alfa Romeo</option>
        <option value="ASTON_MARTIN">Aston Martin</option>
        <option value="AUDI">Audi</option>
        <option value="BENTLEY">Bentley</option>
        <option value="BMW">BMW</option>
        <option value="BUGATTI">Buggati</option>
        <option value="CHEVROLET">Chevrolet</option>
        <option value="CITROEN">Citroen</option>
        <option value="FERRARI">Ferrari</option>
        <option value="FIAT">Fiat</option>
        <option value="FORD">Ford</option>
        <option value="HONDA">Honda</option>
        <option value="HYUNDAI">Hyundai</option>
        <option value="JAGUAR">Jaguar</option>
        <option value="LAMBORGHINI">Lamborghini</option>
        <option value="LAND_ROVER">Land Rover</option>
        <option value="MAZDA">Mazda</option>
        <option value="MERCEDES_BENZ">Mercedes Benz</option>
        <option value="NISSAN">Nissan</option>
        <option value="PEUGEOT">Peugeot</option>
        <option value="PORSCHE">Porsche</option>
        <option value="SUZUKI">Suzuki</option>
        <option value="TOYOTA">Toyota</option>
        <option value="VOLVO">Volvo</option>
    </select>
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-1 col-sm-11">
    <button class="btn btn-default" type="reset">Reset</button>
    <button class="btn btn-primary" type="submit">Create</button>
</div>
</div>
        </form>
        </div>

        </div>
        </div>
        <!-- /#page-content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Bootstrap core JavaScript -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

<script src="   /js/bootstrap2.min.js"></script>


        <!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });


</script>

        </body>

        </html>
