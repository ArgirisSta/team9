<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Home</title>

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
        <a class="active" href="/admin/index">Home</a>
        <a href="/admin/searchRepair">Repairs</a>
        <a href="/admin/Users">Owners</a>
        <a href="/admin/addRepair">Add Repair Service</a>
        <a href="/admin/addUser">Add User</a>
        <div class="search-container">
            <form class="example" action="/admin/index" name="seachForm" method="get">
                <input type="text" placeholder="Search by Surname | AFM" name="criteria">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

        </div>
        <a href="logout.ftl">Log out</a>
    </div>



    <div id="page-content-wrapper">
        <div class="container-fluid">

            <#include "persons.ftl">

            <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

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