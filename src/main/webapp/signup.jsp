<%--
  Created by IntelliJ IDEA.
  User: hsenid
  Date: 4/18/16
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">-->
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="successDesign.css">


    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/date.js"></script>
    <script src="assets/js/date.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

    <!-- <script src="jquery.date-dropdowns.min.js"></script>-->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="all" href="datepicker/daterangepicker.css" />
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css"/>
    <script type="text/javascript" src="datepicker/moment.js"></script>
    <script type="text/javascript" src="datepicker/daterangepicker.js"></script>

    <title>Sign Up</title>
    <%--<script type="text/javascript">

        /***********************************************
         * Drop Down Date select script- by JavaScriptKit.com
         * This notice MUST stay intact for use
         * Visit JavaScript Kit at http://www.javascriptkit.com/ for this script and more
         ***********************************************/

        var monthtext = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];

        function populatedropdown(dayfield, monthfield, yearfield) {
            var today = new Date()
            var dayfield = document.getElementById(dayfield)
            var monthfield = document.getElementById(monthfield)
            var yearfield = document.getElementById(yearfield)
            for (var i = 0; i < 31; i++)
                dayfield.options[i] = new Option(i, i + 1)
            dayfield.options[today.getDate()] = new Option(today.getDate(), today.getDate(), true, true) //select today's day
            for (var m = 0; m < 12; m++)
                monthfield.options[m] = new Option(monthtext[m], monthtext[m])
            monthfield.options[today.getMonth()] = new Option(monthtext[today.getMonth()], monthtext[today.getMonth()], true, true) //select today's month
            var thisyear = today.getFullYear()
            for (var y = 0; y < 100; y++) {
                yearfield.options[y] = new Option(thisyear, thisyear)
                thisyear -= 1
            }
            yearfield.options[0] = new Option(today.getFullYear(), today.getFullYear(), true, true) //select today's year
        }

    </script>--%>
</head>
<body onload='document.form1.fname.focus()'>
<div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <ul class="nav navbar-nav">
            <li><a href="success.jsp">Translate</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle-active" data-toggle="dropdown" href="#">User Panel <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Add User</a></li>
                    <li><a href="searchuser.jsp">Search</a></li>
                </ul>
            </li>

        </ul>
    </nav>
</div>
<div class="top-content">


    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1>Translator Sign Up</h1>

                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Sign Up</h3>

                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <form role="form" name="form1" action="Registration" method="post" class="signup-form">

                        <div class="form-bottom">
                            <div class="form-group">
                                <label class="sr-only">firstname :</label>
                                <input type="text" name="f_name" placeholder="first name..." id="f_name" size="25"
                                       required>
                            </div>
                            <div class="form-group">
                                <label class="sr-only">lastname :</label>
                                <input type="text" name="lname" placeholder="last name..."
                                       class="form-lastname form-control" id="l_name">
                            </div>
                            <!--<script> $('#defaultPopup,#defaultInline').datepick();</script>-->

                            <div class="form-group">
                                <input type="text" name="email" class="form-control" placeholder="example@domain.com" id="e_mail"
                                       required>
                            </div>

                            <div class="form-group">

                               <%-- <%@include file="date1.jsp" %>--%>
                                   <div class="col-sm-8">
                                       <label for="date2">DOB</label><input class="form-control" id="date2" name="date2" type="text" required/>
                                   </div>



                                   <script>
                                       $('#date2').daterangepicker({


                                           "singleDatePicker": true,
                                           "showDropdowns": true,
                                           "startDate": "05/09/2016"

                                       });

                                   </script>

                            </div
                            <form action="" name="someform">
                                <%--<select id="daydropdown">
                                </select>
                                <select id="monthdropdown">
                                </select>
                                <select name="datepick" id="yeardropdown">
                                </select>--%>
                            </form>

                          <%--  <script type="text/javascript">

                                //populatedropdown(id_of_day_select, id_of_month_select, id_of_year_select)
                                window.onload = function () {
                                    populatedropdown("daydropdown", "monthdropdown", "yeardropdown")
                                }
                            </script>--%>

                            <div class="form-group">
                                <input type="text" name="phonenumber" class="form-control"
                                       placeholder="Enter your phone number" id="mobile"required>
                            </div>

                            <div class="form-group"
                                 style="position:relative;width:200px;height:25px;border:0;padding:0;margin:10px;">
                                <select style="position:absolute;top:0px;left:0px;width:200px; height:25px;line-height:20px;margin:0;padding:0;"
                                        onchange="document.getElementById('country').value=this.options[this.selectedIndex].text; document.getElementById('idValue').value=this.options[this.selectedIndex].value;">
                                    <option></option>
                                    <option value="sl">Sri Lanka</option>
                                    <option value="jp">Japan</option>
                                    <option value="en">England</option>
                                    <option value="kr">Korea</option>
                                    <option value="us">USA</option>
                                </select>

                                <input name="country" placeholder="Select Your Country" id="country"
                                       style="position:absolute;top:0px;left:0px;width:183px;width:180px\9;#width:180px;height:23px; height:21px\9;#height:18px;border:1px solid #556;"
                                       onfocus="this.select()" type="text" required>
                                <input name="idValue" id="idValue" type="hidden">
                                <select style="position:absolute;top:0px;left:0px;width:200px; height:25px;line-height:20px;margin:0;padding:0;"
                                        onchange="document.getElementById('group').value=this.options[this.selectedIndex].text; document.getElementById('idValue').value=this.options[this.selectedIndex].value;">
                                    <option></option>
                                    <option value="ad">Admin</option>
                                    <option value="cc">Customer care</option>
                                    <option value="tr">Translator</option>
                                </select>
                                <input name="group" placeholder="Select Your group" id="group"
                                       style="position:absolute;top:0px;left:0px;width:183px;width:180px\9;#width:180px;height:23px; height:21px\9;#height:18px;border:1px solid #556;"
                                       onfocus="this.select()" type="text" required>
                                <input name="grp_value" id="grp_value" type="hidden">
                            </div>

                            <div class="form-group">
                                <label class="sr-only">Username</label>
                                <input type="text" name="uname" placeholder="username..."
                                       class="form-username form-control" id="form-uname" required>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="password" placeholder="Password..."
                                       class="form-password form-control" id="form-password" required>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Re-enterPassword</label>
                                <input type="password" name="form-password" placeholder="Re-enter Password..."
                                       class="form-password form-control" id="form-conpassword" required>

                            </div>
                            <button type="submit" class="btn"
                                    onclick="allLetter(document.form1.fname&&document.form1.lname)">Register
                            </button>
                            <button type="reset" class="btn" value="Reset">Reset</button>
                        </div>
                        <script src="assets/js/date.js"></script>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

</div>


<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>

<a href=" http://translate.yandex.com/">Powered by Yandex.Translate</a>
</body>
</html>
