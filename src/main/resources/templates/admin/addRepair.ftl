<!DOCTYPE html>
<html lang="en">

<head>

    <#include "/partials/head.ftl">

    <title>Add New Repair</title>

    <!-- Bootstrap core CSS -->
    <#include "/partials/styles.ftl">

    <!-- Custom styles for this template -->


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
        <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle" style="float: left">Toggle Menu</a>
        <div class="container-fluid">
            <#import "/spring.ftl" as spring />
            <h1 class="page-header">Add Repair Service</h1>

            <form action="/admin/addRepair" name="repairForm" method="POST" class="form-horizontal">


                <div class="form-group">

                    <label class="col-sm-1 control-label" for="date">Date</label>
                    <div class="col-sm-11">
                     <@spring.bind "repairForm.date"/>

                        <input class="form-group" type="datetime-local"  name="date" id="date" placeholder="Date">
                    </div>
                </div>

                <div class="form-group">
             <@spring.bind "repairForm.repairStatus"/>
                    <label class="col-sm-1 control-label"for="repairStatus">Repair Status</label>
                    <div class="col-sm-11">
                        <input class="form-group" type="text"  name="repairStatus" id="repairStatus" placeholder="Status">
                    </div>
                </div>

                <div class="form-group">

            <@spring.bind "repairForm.repairType"/>
                    <label class="col-sm-1 control-label" for="repairType">Repair Type</label>
                    <div class="col-sm-11">
                        <input class="form-group" type="text"  name="repairType" id="repairType" placeholder="Type">

                    </div>
                </div>

                <div class="form-group">

                <@spring.bind "repairForm.price"/>
                    <label class="col-sm-1 control-label" for="price">Price</label>
                    <div class="col-sm-11">
                        <input class="form-group" type="number"  name="price" id="price" placeholder="Price">

                    </div>
                </div>

                <div class="form-group">

               <@spring.bind "repairForm.afm"/>
                    <label class="col-sm-1 control-label" for="afm">Owner AFM</label>
                    <div class="col-sm-11">
                        <input class="form-group" type="text"    name="afm" id="afm" placeholder="AFM" >

                    </div>
                </div>

                <div class="form-group">

                           <@spring.bind "repairForm.comments"/>
                    <label class="col-sm-1 control-label"="comments">Comments</label>
                    <div class="col-sm-11">
                        <textarea rows="4" cols="50" name="comments" class="form-group" style="margin-right: auto" style="margin-left: 26px"
                                  >Enter comments here... </textarea>
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-sm-offset-1 col-sm-11">
                        <button class="btn btn-primary" type="submit" >Add Repair Service</button>
                    </div>
                </div>
            </form>



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