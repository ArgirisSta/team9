<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Up Coming Repairs</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

</head>

<body>



<#import "/spring.ftl" as spring />


<div id="wrapper">

    <!-- Sidebar -->

    <#include "/partials/sidebar.ftl">
    <!-- Sidebar -->

    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->

    <div class="topnav">
        <a href="Home.ftl">Home</a>
        <a class="active" href="searchRepair.ftl">Repairs</a>
        <a href="Users.ftl">Owners</a>
        <a href="addRepair.ftl">Add Repair Service</a>
        <a href="addUser.ftl">Add User</a>
        <div class="search-container">
            <form action="">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

        </div>
        <a href="logout.ftl">Log out</a>
    </div>

        <#include "/partials/searchByAfm.ftl">


    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        <div class="container-fluid">
            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <h1 class="page-header">Up Coming Repairs</h1>

                <#include "/partials/searchRepairForm.ftl">

            </div>

        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->
<div id="dialog-delete-confirmation" title="Are you sure?" class="hidden">
    <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>

    <div>
        <button class="btn btn-clock btn-primary">Close</button>
    </div>
</div>
<!-- Bootstrap core JavaScript -->

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