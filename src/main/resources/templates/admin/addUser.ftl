<!DOCTYPE html>
<html lang="en">

<head>

    <#include "../partials/head.ftl">

    <title>Add New Owner</title>

    <!-- Bootstrap core CSS -->
     <#include "../partials/styles.ftl">

</head>

<body>

<#import "/spring.ftl" as spring />

<div id="wrapper">

    <!-- Sidebar -->
   <#include "../partials/sidebar.ftl">
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <#include "../partials/topnav.ftl">

    <#include "../partials/searchByAfm.ftl">

    <div id="page-content-wrapper">
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Toggle Menu</a>

        <div class="container-fluid">

                <#include "../partials/addUserForm.ftl">

        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<#include "../partials/scripts.ftl">
<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>