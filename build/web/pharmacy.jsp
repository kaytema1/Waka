<%-- 
    Document   : pharmacy
    Created on : Jul 26, 2012, 8:55:54 AM
    Author     : dependable
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entities.*,java.util.List,java.util.Date,java.text.SimpleDateFormat,java.text.DateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>ClaimSync Extended</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le styles -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <link type="text/css" href="css/custom-theme/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
        <link href="css/docs.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
        <style type="text/css" title="currentStyle">
            @import "css/jquery.dataTables_themeroller.css";
            @import "css/custom-theme/jquery-ui-1.8.16.custom.css";
            body {
                /*    overflow: hidden; */
            }

            .large_button {
                background-color: #35AFE3;
                background-image: -moz-linear-gradient(center top , #45C7EB, #2698DB);
                box-shadow: 0 1px 0 0 #6AD2EF inset;
                color: #FFFFFF;
                text-decoration: none;
                font-weight: lighter;
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                font-size: 36px;
            }

            .large_button:hover {
                background-color: #FBFBFB;
                background-image: -moz-linear-gradient(center top , #FFFFFF, #F5F5F5);
                background-repeat: repeat-x;
                border: 1px solid #DDDDDD;
                border-radius: 3px 3px 3px 3px;
                box-shadow: 0 1px 0 #FFFFFF inset;
                list-style: none outside none;
                color: #777777;
                /* padding: 7px 14px; */
            }
        </style>

        <link href="css/tablecloth.css" rel="stylesheet" type="text/css" media="screen" />

        <%
            HMSHelper mgr = new HMSHelper();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            //Patient p = (Patient)session.getAttribute("patient");
            //get current date time with Date()
            Date date = new Date();
            //System.out.println(dateFormat.format(date));
            List visits = mgr.listUnitVisitations("Pharmacy", dateFormat.format(date));
            List treatments = null;
            // for (int i = 0; i < visits.size(); i++) {
            //   Visitationtable visit = (Visitationtable) visits.get(i);
        %>
        
        <script type="text/javascript">
            
            function alert(){
                
            }
        </script>
    </head>

    <body data-spy="scroll" data-target=".subnav" data-offset="50">

        <!-- Navbar
        ================================================== -->
        <div style="display: none;" class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
                    <a class="brand" href="../"><img src="images/logo.png" width="200px;" /></a>

                    <div style="margin-top: 10px;" class="nav-collapse">
                        <ul class="nav pull-right">

                            <li class="dropdown">
                                <a class="active" > Logged in as:  Mr. Amoo </a>

                            </li>
                            <li class="divider-vertical"></li>

                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i> Account <b class="caret"></b></a>
                                <ul class="dropdown-menu">

                                    <li>
                                        <a target="_blank" href="bootstrap.min.css"><i class="icon-wrench"></i> Settings </a>
                                    </li>

                                    <li>
                                        <a target="_blank" href="bootstrap.css"><i class="icon-question-sign"></i> Help </a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="bootstrap.css"><i class="icon-share"></i> Feedback </a>
                                    </li>
                                    <li class="divider"></li>

                                    <li>
                                        <a target="_blank" href="variables.less"><i class="icon-off"></i> Log Out</a>
                                    </li>

                                </ul>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">

            <!-- Masthead
            ================================================== -->
            <header  class="jumbotron subhead" id="overview">

                <div style="margin-top: 20px; margin-bottom: -50px;" class="subnav navbar-fixed-top hide">
                    <ul class="nav nav-pills">

                        <li>
                            <a href="#">Pharmacy</a><span class="divider"></span>
                        </li>

                    </ul>
                </div>

            </header>

            <div style="position: absolute; left: 30%; top: 200px; text-align: center;" class="progress1">
                <img src="images/logoonly.png" width="136px;" style="margin-bottom: 20px;" />
                <a href="#"> <h3 class="segoe" style="text-align: center; font-weight: lighter;"> Your page is taking longer than expected to load.....
                        <br />
                        Please be patient!</h3>
                    <br />
                </a>
                <div  class="progress progress-striped active span5">

                    <div class="bar"
                         style="width: 100%;"></div>
                </div>
            </div>

            <section style="margin-top: -30px;" id="dashboard">

                <!-- Headings & Paragraph Copy -->
                <div class="row">

                 
                   <%@include file="widgets/leftsidebar.jsp" %>

                    <div style="margin-top: 0px; "class="span12 offset3 content1 hide">

                        <div style="padding-bottom: 80px;" class="span9 thumbnail well content">
                            <ul style="margin-left: 0px;" class="breadcrumb">
                                <li>
                                    <a> <i class="icon-tasks"></i> Pharmacy</a><br/>
                                    <%if(session.getAttribute("lasterror") != null){ %>
                                    <h3><a> <%=session.getAttribute("lasterror")%> </a></h3>
                                    <%}%>
                                </li>

                            </ul>
                            <table class="example display">
                                <thead>
                                    <tr>
                                        <th> Patient No </th>
                                        <th> Patient Name </th>
                                        <th> Date of Birth  </th>
                                        <th> Sponsor </th>
                                        <th> Membership ID </th>
                                        <th> Request Date </th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < visits.size(); i++) {
                                            Visitationtable vst = (Visitationtable) visits.get(i);
                                    %>
                                    <tr>
                                        <td colspan="7">
                                            <div class="dialog" id="<%=vst.getPatientid()%>_dialog" title="Dispense Drugs">

                                                <div class="well thumbnail">
                                                    <ul style="margin-left: 0px;" class="breadcrumb">
                                                        <li>
                                                            <span class="divider"></span> Dispense Drug
                                                        </li>    
                                                    </ul>
                                                    <form action="action/forwardaction.jsp" method="post">
                                                        <table class="table example display">
                                                            <thead>
                                                                <tr style="color: #000;">
                                                                    <th> Drug </th>
                                                                    <th> Type </th>
                                                                    <th> Dosage </th>
                                                                    
                                                                    <th> Quantity</th>                                                                
                                                                    <th> Unit Cost </th>
                                                                    <th> Total </th>
                                                                    <th> Dispensed</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <%

                                                                    List ptreatmentss = mgr.patientTreatment(vst.getVisitid());
                                                                    for (int r = 0; r < ptreatmentss.size(); r++) {
                                                                        Patienttreatment ptPatienttreatments = (Patienttreatment) ptreatmentss.get(r);
                                                                %>
                                                                <tr>
                                                                    <td class="patient" rel="popover" data-original-title="<span style='text-align:center;'> <h3>Patient Information Summary </h3> <h5><%=mgr.getPatientByID(vst.getPatientid()).getFname()%> <%=mgr.getPatientByID(vst.getPatientid()).getLname()%></h5> <h5><b> Date of Birth :</b> <%=mgr.getPatientByID(vst.getPatientid()).getDateofbirth()%></h5> </span>"
                                                                        data-content="<table class='table table-bordered'> <tr> <td> Gender  </td> <td> <%=mgr.getPatientByID(vst.getPatientid()).getGender()%> </td> </tr> <tr> <td> Employer </td> <td> <%=mgr.getPatientByID(vst.getPatientid()).getEmployer()%> </td>  </tr> <tr> <td> Sponsor </td> <td> <%=mgr.getSponsor(mgr.sponsorshipDetails(vst.getPatientid()).getSponsorid()).getSponsorname()%></td> </tr> <tr>
                                                                        <td> Policy Number </td> <td> <%=mgr.sponsorshipDetails(vst.getPatientid()).getMembershipid()%> </td> </tr> <tr> <td> Benefit Plan </td> <td> <%=mgr.sponsorshipDetails(vst.getPatientid()).getBenefitplan()%> </td> </tr>  </table> "><%=mgr.getTreatment(ptPatienttreatments.getTreatmentid()).getTreatment()%> </td>
                                                                    <td> Tablet </td>
                                                                    <td><%=ptPatienttreatments.getDosage()%>  </td>
                                                                    
                                                                    <td> <%=ptPatienttreatments.getQuantity()%> </td>

                                                                    <td><%=ptPatienttreatments.getPrice()%> </td>
                                                                    <td><%= (ptPatienttreatments.getQuantity() * ptPatienttreatments.getPrice())%></td>
                                                                    <%if(ptPatienttreatments.getDispensed().equalsIgnoreCase("paid")){%> 
                                                                    <td><input type="checkbox" name="dispensed[]" value="<%=ptPatienttreatments.getId()%>"/> </td>
                                                                        <%}else{%>
                                                                    <td>Unpaid</td>
                                                                    <%}%>
                                                                   Unpaid

<!--  <input type="hidden" name="visitid" value="<%=ptPatienttreatments.getId()%>"/>
  <input type="hidden" name="visitid" value="<%=ptPatienttreatments.getId()%>"/>-->
                                                                </tr>

                                                                <%}%> 



                                                                <tr>

                                                                    <!--here

                                                                    <form action="labnpharmactions.jsp" method="post"/>-->

                                                                    <td><b>Name of Drug

                                                                        </b>

                                                                        <br />
                                                                        <%   if (mgr.sponsorshipDetails(vst.getPatientid()).getType().equalsIgnoreCase("nhis")) {%>

                                                                        <select class="input-xlarge"  id="treatment" onchange = "addTreatment()">
                                                                            <%
                                                                                treatments = mgr.listNhisTreatment();
                                                                                if (treatments != null) {
                                                                                    for (int v = 0; v < treatments.size(); v++) {
                                                                                        Nhistreatment treatment = (Nhistreatment) treatments.get(v);
                                                                            %>
                                                                            <option value="<%=treatment.getDrug()%>><<%=treatment.getCode()%>"><%=treatment.getDrug()%></option> 
                                                                            <% }
                                                                                }
                                                                            %>
                                                                        </select>
                                                                        <%  } else {%>                                      
                                                                        <select class="input-xlarge" id="treatment" onchange = "addTreatment()">
                                                                            <%
                                                                                treatments = mgr.listTreatments();
                                                                                if (treatments != null) {
                                                                                    for (int v = 0; v < treatments.size(); v++) {
                                                                                        Treatment treatment = (Treatment) treatments.get(v);
                                                                            %>
                                                                            <option value="<%=treatment.getTreatment()%>><<%=treatment.getTreatmentid()%>"><%=treatment.getTreatment()%></option> 
                                                                            <% }
                                                                                }
                                                                            %>
                                                                        </select>

                                                                        <%   }
                                                                        %>

                                                                    </td>
                                                                    <td><b>Type

                                                                        </b>
                                                                        <br />
                                                                        <select name="type" class="input-small"> <option value="Tab">
                                                                                Tab
                                                                            </option>
                                                                            <option value="Syrup">
                                                                                Syrup
                                                                            </option>
                                                                            <option value="Capsule">
                                                                                Capsule
                                                                            </option>
                                                                            <option value="Cream">
                                                                                Cream
                                                                            </option></select></td>
                                                                            <td>

                                                                        <b>Recommended Dosage

                                                                        </b> <br />
                                                                        <input name="dosage" type="text" class="input" />
                                                                    </td>
                                                                    <td><b>Quantity

                                                                        </b>
                                                                        <br />

                                                                        <select name="qty" class="input-small">  <option value="0">
                                                                                0
                                                                            </option>
                                                                            <option value="1">
                                                                                1
                                                                            </option>
                                                                            <option value="2">
                                                                                2
                                                                            </option>
                                                                            <option value="3">
                                                                                3
                                                                            </option>
                                                                            <option value="4">
                                                                                4
                                                                            </option>
                                                                            <option value="5">
                                                                                5
                                                                            </option>
                                                                            <option value="6">
                                                                                6
                                                                            </option>
                                                                            <option value="7">
                                                                                7
                                                                            </option>
                                                                            <option value="8">
                                                                                8
                                                                            </option>
                                                                            <option value="9">
                                                                                9
                                                                            </option>
                                                                            <option value="10">
                                                                                10
                                                                            </option>
                                                                        </select></td>
                                                                    

                                                                    <td colspan="3"> 
                                                                        <br />

                                                                        <input name="dosage" type="button" value="Add" class="btn btn-large btn-danger" onclick=";return false"/><!-- <button class="btn btn-info" id="">
                                                                                                         <i class="icon-white icon-check"></i> Add
                                                                                                     </button>--></td>
                                                                </tr>


                                                                <!-- </form>

                                                               end-->

                                                            </tbody>

                                                        </table>

                                                        <div style="text-align: center;" class="form-actions">

                                                           
                                                            <input type="hidden" name="patient" value="<%=vst.getPatientid()%>"/>
                                                            <input type="hidden" name="visitid" value="<%=vst.getVisitid()%>"/>
                                                            <!-- <input type="submit" name="action" value="Forward to Accounts"/>-->
                                                             <select name="unitid">
                                                                <%
                                                                    List units = mgr.listUnits();
                                                                    for (int j = 0; j < units.size(); j++) {
                                                                        Units unit = (Units) units.get(j);
                                                                %>
                                                                <option value="<%=unit.getUnitname()%>"><%=unit.getUnitname()%></option> 
                                                                <% }
                                                                    List wards = mgr.listWard();
                                                                    for (int j = 0; j < wards.size(); j++) {
                                                                        Ward ward = (Ward) wards.get(j);
                                                                %>
                                                                <option value="<%=ward.getWardname()%>"><%=ward.getWardname()%></option> 
                                                                <% }List consultingrooms = mgr.listConRooms();
                                                                    for (int j = 0; j < consultingrooms.size(); j++) {
                                            Consultingrooms consultingroom = (Consultingrooms) consultingrooms.get(j);
                                    %>
                                    <option value="<%=consultingroom.getConsultingroom()%>"><%=consultingroom.getConsultingroom()%></option> 
                                    <% }

                                    

                    %>

                                                                %>
                                                            </select>
                                                            <br/>
                                                            <input type="hidden" name="from" value="Pharmacy"/>
                                                            <button class="btn btn-info" name="action" value="Forward to Accounts">
                                                                <i class="icon-white icon-check"></i> Forward
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="patient" rel="popover" data-original-title="<span style='text-align:center;'> <h3>Patient Information Summary </h3> <h5><%=mgr.getPatientByID(vst.getPatientid()).getFname()%> <%=mgr.getPatientByID(vst.getPatientid()).getLname()%></h5> <h5><b> Date of Birth :</b> <%=mgr.getPatientByID(vst.getPatientid()).getDateofbirth()%></h5> </span>"
                                            data-content="<table class='table table-bordered'> <tr> <td> Gender  </td> <td> <%=mgr.getPatientByID(vst.getPatientid()).getGender()%> </td> </tr> <tr> <td> Employer </td> <td> <%=mgr.getPatientByID(vst.getPatientid()).getEmployer()%> </td>  </tr> <tr> <td> Sponsor </td> <td> <%=mgr.getSponsor(mgr.sponsorshipDetails(vst.getPatientid()).getSponsorid()).getSponsorname()%></td> </tr> <tr>
                                            <td> Policy Number </td> <td> <%=mgr.sponsorshipDetails(vst.getPatientid()).getMembershipid()%> </td> </tr> <tr> <td> Benefit Plan </td> <td> <%=mgr.sponsorshipDetails(vst.getPatientid()).getBenefitplan()%> </td> </tr>  </table> "> <%=vst.getPatientid()%>   </td>
                                        <td><%=mgr.getPatientByID(vst.getPatientid()).getFname()%> <%=mgr.getPatientByID(vst.getPatientid()).getLname()%></td>
                                        <td><%=mgr.getPatientByID(vst.getPatientid()).getDateofbirth()%> </td>

                                        <td><%=mgr.getSponsor(mgr.sponsorshipDetails(vst.getPatientid()).getSponsorid()).getSponsorname()%> </td>
                                        <td><%=mgr.sponsorshipDetails(vst.getPatientid()).getMembershipid()%>   </td>

                                        <td><%=vst.getDate()%> </td>

                                        <td>
                                            <button class="btn btn-info" id="<%=vst.getPatientid()%>_link">
                                                <i class="icon-white icon-check"></i> Dispense
                                            </button></td>
                                    </tr>
                                    <%}%> 

                                </tbody>
                            </table>

                        </div>

                    </div>
                    <div class="clearfix"></div>

                </div>

            </section>

            <footer style="display: none; margin-top: 50px;" class="footer">
                <p style="text-align: center" class="pull-right">
                    <img src="images/logo.png" width="100px;" />
                </p>
            </footer>

        </div><!-- /container -->    

    </div>
</div>
<!--end static dialog-->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap-dropdown.js"></script>
<script src="js/bootstrap-scrollspy.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<script src="js/bootstrap-popover.js"></script>
<script src="js/application.js"></script>

<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>

<script type="text/javascript" src="third-party/jQuery-UI-Date-Range-Picker/js/date.js"></script>
<script type="text/javascript" src="third-party/jQuery-UI-Date-Range-Picker/js/daterangepicker.jQuery.js"></script>

<script src="third-party/wijmo/jquery.mousewheel.min.js" type="text/javascript"></script>
<script src="third-party/wijmo/jquery.bgiframe-2.1.3-pre.js" type="text/javascript"></script>
<script src="third-party/wijmo/jquery.wijmo-open.1.5.0.min.js" type="text/javascript"></script>

<script src="third-party/jQuery-UI-FileInput/js/enhance.min.js" type="text/javascript"></script>
<script src="third-party/jQuery-UI-FileInput/js/fileinput.jquery.js" type="text/javascript"></script>

<script type="text/javascript" src="js/tablecloth.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/demo.js"></script>

<!--initiate accordion-->
<script type="text/javascript">
    $(function() {

        var menu_ul = $('.menu > li > ul'), menu_a = $('.menu > li > a');

        menu_ul.hide();

        $(".menu").fadeIn();
        $(".content1").fadeIn();
        $(".navbar").fadeIn();
        $(".footer").fadeIn();
        $(".subnav").fadeIn();
        $(".progress1").hide();

        menu_a.click(function(e) {
            e.preventDefault();
            if(!$(this).hasClass('active')) {
                menu_a.removeClass('active');
                menu_ul.filter(':visible').slideUp('normal');
                $(this).addClass('active').next().stop(true, true).slideDown('normal');
            } else {
                $(this).removeClass('active');
                $(this).next().stop(true, true).slideUp('normal');
            }
        });

    });

</script>


<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {
        $('.example').dataTable({
            "bJQueryUI" : true,
            "sPaginationType" : "full_numbers",
            "iDisplayLength" : 25,
            "aaSorting" : [],
            "bSort" : true

        });
            
            

        $(".patient").popover({

            placement : 'right',
            animation : true

        });

    });

</script>
<% for (int i = 0;
            i < visits.size();
            i++) {
        Visitationtable vst = (Visitationtable) visits.get(i);
%>


<script type="text/javascript">
   
                      
    $("#<%= vst.getPatientid()%>_dialog").dialog({
        autoOpen : false,
        width : 1000,
        modal :true

    });
    
    $("#<%= vst.getVisitid()%>_adddrug_dialog").dialog({
        autoOpen : false,
        width : 1000,
        modal :true

    });
    
   
    
    $("#<%= vst.getPatientid()%>_link").click(function(){
      
        $("#<%=vst.getPatientid()%>_dialog").dialog('open');
    
    })
   
    $("#<%= vst.getPatientid()%>_dialog").dialog({
        autoOpen : false,
        width : 1000,
        modal :true

    });
    
   
    
    $("#<%= vst.getVisitid()%>_adddrug_link").click(function(){
        alert("");
        $("#<%=vst.getVisitid()%>_adddrug_dialog").dialog('open');
        
    })
   
    
</script>



<% }%>

</body>
</html>
