<%@ taglib prefix="fmt"
           uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="successDesign.css">

    
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Log In</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
       <!-- <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">-->
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

       
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
       


        <link rel="shortcut icon" href="assets/ico/favicon.png">




</head>

<body>

<meta http-equiv="Content-Type" content=”text/html; charset=ISO-8859-1″>

  <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>Translator Log In</h1>
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login</h3>
                            		<p style="color:#ee29ff">
                                        <c:if test="${pageContext.request.method=='POST'}">
                                            <c:set var="errorMessage" scope="session" value="request.getAttribute(errorMessage)"/>
                            		<%--<%
                                           if(null!=request.getAttribute("errorMessage"))
                                           {
                                               out.println(request.getAttribute("errorMessage"));
                                           }
                                       %>--%>
                                            <c:choose>
                                            <c:when test="${errorMessage!=null}">Incorrect username or password
                                                <br />
                                            </c:when>
                                            </c:choose>
                                        </c:if>
                                  </p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="Login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" id="username" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <fmt:bundle basename="jstl_fmt">
                                    <button type="submit" class="btn" id="login_btn">
                                        <fmt:message key="index.login_btn"> </fmt:message>
                                    </button>
                                    <div style="margin: 8px">
                                        <button id="signup_loginpage_btn" type="submit" class="btn" onclick="window.location='signup.jsp'" >
                                            <fmt:message key="index.signup_loginpage_btn"> </fmt:message>
                                        </button>
                                    </div
                                    </fmt:bundle>
                                    >
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