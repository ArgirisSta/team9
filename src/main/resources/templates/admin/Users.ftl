<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Owners</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

</head>

<body>

<#import "/spring.ftl" as spring />

<div id="wrapper">

    <!-- Sidebar -->
    <#include "/partials/sidebar.ftl">
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->

    <div class="topnav">
        <a href="/Home.ftl">Home</a>
        <a href="/Repairs.ftl">Repairs</a>
        <a class="active" href="/Users.ftl">Users</a>
        <a href="/addRepair.ftl">Add Repair Service</a>
        <a href="/addUser.ftl">Add User</a>
        <div class="search-container">
            <form action="">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

        </div>
        <a href="/logout.ftl">Log out</a>
    </div>

    <#include "/partials/searchByAfm.ftl">

    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        <div class="container-fluid">
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Users</h1>
                <table id="Persons" class="table table-striped">
                    <thead>
                    <tr>
                        <th>AFM</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Car Brand</th>
                        <th>Plate Number</th>
                        <th>User Type</th>
                    </tr>
                    </thead>
                    <tbody>

                    <#list Persons as Person>
                    <tr>

                        <td> ${Person.afm}</td>
                        <td> ${Person.name}</td>
                        <td> ${Person.surname}</td>
                        <td> ${Person.address}</td>
                        <td> ${Person.email}</td>
                        <td> ${Person.password}</td>
                        <td> ${Person.carBrand}</td>
                        <td> ${Person.plateNumber}</td>
                        <td> ${Person.userType}</td>


                        <td class="text-right">
                            <button class="btn btn-danger button-delete-confirmation" type="submit" value="Delete">Delete
                            </button>
                            <button class="btn btn-success" type="submit" value="Edit">Edit</button>
                        </td>
                    </tr>
                    </#list>


                    </tbody>
                </table>
            </div>

        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->
<#include "/partials/scripts.ftl">


<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>