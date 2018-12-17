<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Add New Owner</title>

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
        <a href="/admin/index">Home</a>
        <a href="/admin/searchRepair">Repairs</a>
        <a href="/admin/Users">Owners</a>
        <a href="/admin/addRepair">Add Repair Service</a>
        <a class="active" href="/admin/addUser">Add User</a>
        <div class="search-container">
            <form class="example" action="/admin/index" name="seachForm" method="get">
                <input type="text" placeholder="Search by Surname | AFM" name="criteria">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>

        </div>
        <a href="logout.ftl">Log out</a>
    </div>

    <#include "/partials/searchByAfm.ftl">

    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle" style="float: left">Toggle Menu</a>

        <div class="container-fluid">
            <h1 class="page-header">Add New User</h1>

                <#include "/partials/addUserForm.ftl">

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