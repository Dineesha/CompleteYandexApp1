<%@ page import="com.mongodb.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="loginmongo.UserUpdate" %>
<%--
  Created by IntelliJ IDEA.
  User: hsenid
  Date: 4/22/16
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Search</title>

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
   <%-- <link rel="stylesheet" href="assets/bootstrap-table-master/src/bootstrap-table.css">
    <script src="assets/bootstrap-table-master/dist/locale/*"></script>
    <script src="assets/bootstrap-table-master/dist/bootstrap-table-locale-all.js"></script>
    <script src="assets/bootstrap-table-master/dist/bootstrap-table-locale-all.min.js"></script>
    <script src="assets/bootstrap-table-master/dist/bootstrap-table.min.js"></script>
    <link rel="stylesheet" href="assets/bootstrap-table-master/dist/bootstrap-table.min.css">
    <script src="assets/bootstrap/js/jquery-2.2.3.min.js"></script>
    <script src="assets/bootstrap/js/jquery-2.2.3.js"></script>
    <script src="bootstrap-table-zh-CN.js"></script>--%>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>

    <!-- Latest compiled and minified Locales -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/locale/bootstrap-table-zh-CN.min.js"></script>

    <link rel="shortcut icon" href="assets/ico/favicon.png">
</head>
<body>

<div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <ul class="nav navbar-nav">
            <li><a href="success.jsp">Translate</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle-active" data-toggle="dropdown" href="#">User Panel <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="signup.jsp">Add User</a></li>
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
                    <h1>Search</h1>


                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Search for Users</h3>

                            <p style="color:#ff0913">
                                <%
                                    if (null != request.getAttribute("errorMessage")) {
                                        out.println(request.getAttribute("errorMessage"));
                                    }
                                %></p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>

                        </div>
                    </div>
                    <div class="form-bottom" id="modalform">
                        <form role="form" action="SearchServlet" method="post" class="search-form" >
                            <div class="form-group">
                                <label class="sr-only">searchname</label>
                                <input type="text" name="form-searchname" placeholder="Search name here ..."
                                       class="form-firstname form-control" id="form-searchname">

                            </div>
                            <button type="submit" class="btn">search</button>

</form>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>

</div>

<form role="form" action="DeleteServlet" method="post">

    <p>
        <%
            if ("1" == request.getAttribute("searchMessage")) {

                String searchName = request.getParameter("form-searchname");

                MongoClient mongoC = new MongoClient(new ServerAddress("Localhost", 27017));

                DB database = mongoC.getDB("login_form");
                DBCollection collec1 = database.getCollection("test_user1");
                BasicDBObject searchQuery = new BasicDBObject();
                searchQuery.put("fname", searchName);
                //ArrayList<DBObject> list1 = new ArrayList<DBObject>();

               // for (DBObject dock : collec1.find(searchQuery)) {
      /*String fname = (String) dock.get( "fname" );
      String lname = (String) dock.get( "lname" );
      String dob = (String) dock.get( "dob" );
      String country = (String) dock.get( "country" );
      String email = (String) dock.get( "email" );
      String username = (String) dock.get( "username" );*/
     /* out.println(fname);
      out.println(lname);
      out.println(dob);
      out.println(country);
      out.println(email);
      out.println(username);*/
                    //out.println(dock);
                   /******UserUpdate up=new UserUpdate();
                     up.deleteSelectedUser(dock);*/
                   // list1.add(dock);
      /*list1.add(lname);
      list1.add(dob);
      list1.add(country);
      list1.add(email);
      list1.add(username);*/
               // }


            }

        %></p>
    <%--
    <div style="height: 2px;width: 2px"> <input type="image" src="assets/ico/delete.png" alt="Submit"></div>
    --%>
    <button type="button" class="btn-danger btn-lg" data-toggle="modal" data-target="#deletemodal">Delete</button>
    <div class="modal fade" id="deletemodal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <p>Are you sure you want to delete this user?</p>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#editmodal">Edit</button>
    <div class="modal fade" id="editmodal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <%--<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>--%>
                <div class="modal-body">
                    <jsp:include page="signup.jsp" />
                    <input type="submit" value="UserEditServlet" onclick="form.action='UserEditServlet';">
                </div>
                <%--<div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>--%>
            </div>
        </div>
    </div>

<%--
    <button type="submit" onclick="window.location='signup.jsp'" class="btn-info">Edit</button>
--%>


   <%-- <div class="container">--%>
       <%-- <div class="table-responsive-editable">
            <table class="table"  id="table"  >
                <script src="bootstrap_table.js"></script>
                <script type="text/javascript" src="assets/bootstrap-table-master/src/bootstrap-table.js"></script>

             <thead>
                <tr style="color: Highlight">
                    <th data-field="fn">Firstname</th>
                    <th data-field="ln">Lastname</th>
                    <th data-field="bd">DOB</th>
                    <th data-field="cn">Country</th>
                    <th data-field="em">E-mail</th>
                    <th data-field="un">Username</th>
                    <th data-field="state" data-checkbox="true"></th>

                </tr>

                <tr style="color: #ffffff">
                    <%
                        String searchName = request.getParameter("form-searchname");
                        MongoClient mongoC = new MongoClient(new ServerAddress("Localhost", 27017));
                        DB database = mongoC.getDB("login_form");
                        DBCollection collec1 = database.getCollection("test_user1");
                        BasicDBObject searchQuery = new BasicDBObject();
                        searchQuery.put("fname", searchName);
                        for (DBObject dock : collec1.find(searchQuery)) {
                            String fname = (String) dock.get("fname");
                            /*String lname = (String) dock.get( "lname" );
                            String dob = (String) dock.get( "dob" );
                            String country = (String) dock.get( "country" );
                            String email = (String) dock.get( "email" );
                            String username = (String) dock.get( "username" );
                            out.println("<TD>"+fname+"<TD>" + lname+"<TD>"+dob+"<TD>"+country+"<TD>"+email+"<TD>"+username+"<BR>");*/
                            out.println(fname);

                            out.println("<BR>");

                        }

                    %>
                    <td><%

                        for (DBObject dock : collec1.find(searchQuery)) {
                            String lname = (String) dock.get("lname");
                            out.println(lname);
                            out.println("<BR>");
/*
                            out.println("<TD>" + lname);
*/



                        }%></td>
                    <td><%

                        for (DBObject dock : collec1.find(searchQuery)) {
                            String dob = (String) dock.get("dob");
                            out.println(dob);
                            out.println("<BR>");

                        }%></td>
                    <td><%
                        for (DBObject dock : collec1.find(searchQuery)) {
                            String country = (String) dock.get("country");
                            out.println(country);
                            out.println("<BR>");

                        }%></td>
                    <td><%
                        for (DBObject dock : collec1.find(searchQuery)) {
                            String email = (String) dock.get("email");
                            out.println(email);
                            out.println("<BR>");

                        }%></td>
                    <td><%
                        for (DBObject dock : collec1.find(searchQuery)) {
                            String username = (String) dock.get("username");
                            out.println(username);
                            out.println("<BR>");

                        }%></td>
                    <td><%
                        for (DBObject dock : collec1.find(searchQuery)) {
                            out.println("<input type=\"checkbox\" name=\"usercheck\" >");
                            out.println("<BR>");
                        }%></td>
                    <!-- <td>  <input type="image" src="assets/ico/Awicons-Vista-Artistic-Delete.ico" alt="Submit" width="48" height="48"></td>-->

                </tr>

                </thead>
            </table>--%>
    <div class="container" style="background-color: #ffffff">
    <div id="toolbar" class="btn-group">
        <button type="button" class="btn btn-default">
            <i class="glyphicon glyphicon-plus"></i>
        </button>

        <button type="button" class="btn btn-default">
            <i class="glyphicon glyphicon-trash"></i>
        </button>
    </div>

           <table data-toggle="table" id="table"
                  data-url="http://mikepenz.com/jsfiddle/"

                  data-pagination="true"
                  data-side-pagination="server"
                  data-page-list="[5, 10, 20, 50, 100, 200]"
                  data-search="true"
                  data-height="600"
                  data-sortable="true"
                  data-show-refresh="true"
                  data-show-toggle="true"
                  data-show-columns="true"
                  data-toolbar="#toolbar">
               <thead>
               <tr style="color: Highlight">
                   <th data-field="fn" data-sortable="true" >Firstname</th>
                   <th data-field="ln" data-sortable="true" >Lastname</th>
                   <th data-field="bd" data-sortable="true" >DOB</th>
                   <th data-field="cn">Country</th>
                   <th data-field="ct">City</th>
                   <th data-field="em">E-mail</th>
                   <th data-field="gr">Group</th>

                   <th data-field="un" data-sortable="true" >Username</th>
                   <th data-field="action" data-formatter="actionFormatter" data-events="actionEvents">Action</th>
               </tr>

               </thead>

           </table>
            <script>
                function actionFormatter(value, row, index) {
                    return [
                        '<a class="edit ml10" href="javascript:void(0)" title="Edit">',
                        '<i class="glyphicon glyphicon-edit"></i>',
                        '</a>',
                        '<a class="remove" href="#" title="Delete">',
                        '<i class="glyphicon glyphicon-remove"></i>',
                        '</a>'
                    ].join('');
                }

                window.actionEvents = {

                    'click .edit': function (e, value, row, index) {
                        $('#editmodal').modal('show');
                       // window.open("signup.jsp");
                        alert('You click edit icon, row: ' + JSON.stringify(row));
                        //console.log(value, row, index);
                    },
                    'click .remove': function (e, value, row, index) {
                        if (window.confirm("Do you really want to delete the row?")) {
                            alert('Row has deleted');
                        }
                    }
                };
            </script>

        <script src="sample2.js"></script>
<%--<script>
    $(document).ready(function() {
        $('#table').table( {
            "ajax": 'domain-bk.json'
        } );
    } );
</script>--%>

</div>
</form>
        <%--<div class="col-md-6">
            <ul class="pagination">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
            </ul>
        </div>--%>



<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="bootstrap_table.js"></script>

<%--
<script src="bootstrap_table.js"></script>
--%>

<a href=" http://translate.yandex.com/">Powered by Yandex.Translate</a>

</body>
</html>
