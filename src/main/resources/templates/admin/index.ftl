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
    <#include "/partials/topnav.ftl">

    <#include "/partials/searchByAfm.ftl">

    <div id="page-content-wrapper">
        <div class="container-fluid">
            <h1>Welcome Admin</h1>
            <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
            <h3>Please press the Toggle Menu button to navigate to available actions to perform!</h3>
            <br>
            <br>

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