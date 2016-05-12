<!DOCTYPE html>
<tr xmlns="http://www.w3.org/1999/html" xmlns:name="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="ISO-8859-1">
         <link rel="stylesheet" type="text/css" href="assets/css/successDesign.css">


 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Success</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <%--<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">

		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">--%>
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>





    </head>
<body align="right">
<jsp:include page="header.jsp" />

<div class="container">
    <nav class = "navbar navbar-inverse navbar-fixed-top" role = "navigation">
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Translate</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">User Panel <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="signup.jsp">Add User</a></li>
                <li><a href="searchuser.jsp">Search</a></li>
            </ul>
        </li>

    </ul>
</nav>
</div>

<div class="top-content">
<label style="align:left"> <h3 style="color:white">You are logged in as  <%=request.getParameter("name")%></h3></label>
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>Translator</h1>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<!--<div class="form-top">

                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>-->

<div>
<form class="mainform" role="form" action="LanguageTranslation" method="post" class="login-form">



    <div  style="display:block;padding:30px">



    <select  name="fromLang">
 <%= request.getAttribute( "fromLang" ) %>

            <option value="af">Afrikaans</option>
            <option value="ar">Arabic</option>
            <option value="az">Azerbaijani</option>
            <option value="ba">Bashkir</option>
            <option value="be">Belarusian</option>
            <option value="bg">Bulgarian</option>
            <option value="bs">Bosnian</option>
            <option value="ca">Catalan</option>
            <option value="cs">Czech</option>
            <option value="cy">Welsh</option>
            <option value="da">Danish</option>
            <option value="de">German</option>
            <option value="el">Greek</option>
            <option value="en">English</option>
            <option value="es">Spanish</option>
            <option value="et">Estonian</option>
            <option value="eu">Basque</option>
            <option value="fa">Persian</option>
            <option value="fi">Finnish</option>
            <option value="fr">French</option>
            <option value="ga">Irish</option>
            <option value="gl">Galician</option>
            <option value="he">Hebrew</option>
            <option value="hi">Hindi</option>
            <option value="hr">Croatian</option>
            <option value="ht">Haitian</option>
            <option value="hu">Hungarian</option>
            <option value="hy">Armenian</option>
            <option value="id">Indonesian</option>
            <option value="is">Icelandic</option>
            <option value="it">Italian</option>
            <option value="ja">Japanese</option>
            <option value="ka">Georgian</option>
            <option value="kk">Kazakh</option>
            <option value="ko">Korean</option>
            <option value="ky">Kirghiz</option>
            <option value="la">Latin</option>
            <option value="lt">Lithuanian</option>
            <option value="lv">Latvian</option>
            <option value="mg">Malagasy</option>
            <option value="mk">Macedonian</option>
            <option value="mn">Mongolian</option>
            <option value="ms">Malay</option>
            <option value="mt">Maltese</option>
            <option value="nl">Dutch</option>
            <option value="no">Norwegian</option>
            <option value="pl">Polish</option>
            <option value="pt">Portuguese</option>
            <option value="ro">Romanian</option>
            <option value="ru">Russian</option>
            <option value="sk">Slovak</option>
            <option value="sl">Slovenian</option>
            <option value="sq">Albanian</option>
            <option value="sr">Serbian</option>
            <option value="sv">Swedish</option>
            <option value="sw">Swahili</option>
            <option value="tg">Tajik</option>
            <option value="th">Thai</option>
            <option value="tl">Tagalog</option>
            <option value="tr">Turkish</option>
            <option value="tt">Tatar</option>
            <option value="uk">Ukrainian</option>
            <option value="ur">Urdu</option>
            <option value="uz">Uzbek</option>
            <option value="vi">Vietnamese</option>
            <option value="zh">Chinese</option>
       </select>


        <%
        out.println("<textarea id=\"txtarea1\" name=\"txttranslatefrom\">");
        String st3=(String)request.getAttribute("txttranslatefrom");
        if(st3!=null){
        	out.println(st3);
        }
        out.println("</textarea>");
        %>


</div>

<div  style="display:block;padding:30px" >
<div style="padding:10px">
    <select name="toLang">


            <option value="af">Afrikaans</option>
            <option value="ar">Arabic</option>
            <option value="az">Azerbaijani</option>
            <option value="ba">Bashkir</option>
            <option value="be">Belarusian</option>
            <option value="bg">Bulgarian</option>
            <option value="bs">Bosnian</option>
            <option value="ca">Catalan</option>
            <option value="cs">Czech</option>
            <option value="cy">Welsh</option>
            <option value="da">Danish</option>
            <option value="de">German</option>
            <option value="el">Greek</option>
            <option value="en">English</option>
            <option value="es">Spanish</option>
            <option value="et">Estonian</option>
            <option value="eu">Basque</option>
            <option value="fa">Persian</option>
            <option value="fi">Finnish</option>
            <option value="fr">French</option>
            <option value="ga">Irish</option>
            <option value="gl">Galician</option>
            <option value="he">Hebrew</option>
            <option value="hi">Hindi</option>
            <option value="hr">Croatian</option>
            <option value="ht">Haitian</option>
            <option value="hu">Hungarian</option>
            <option value="hy">Armenian</option>
            <option value="id">Indonesian</option>
            <option value="is">Icelandic</option>
            <option value="it">Italian</option>
            <option value="ja">Japanese</option>
            <option value="ka">Georgian</option>
            <option value="kk">Kazakh</option>
            <option value="ko">Korean</option>
            <option value="ky">Kirghiz</option>
            <option value="la">Latin</option>
            <option value="lt">Lithuanian</option>
            <option value="lv">Latvian</option>
            <option value="mg">Malagasy</option>
            <option value="mk">Macedonian</option>
            <option value="mn">Mongolian</option>
            <option value="ms">Malay</option>
            <option value="mt">Maltese</option>
            <option value="nl">Dutch</option>
            <option value="no">Norwegian</option>
            <option value="pl">Polish</option>
            <option value="pt">Portuguese</option>
            <option value="ro">Romanian</option>
            <option value="ru">Russian</option>
            <option value="sk">Slovak</option>
            <option value="sl">Slovenian</option>
            <option value="sq">Albanian</option>
            <option value="sr">Serbian</option>
            <option value="sv">Swedish</option>
            <option value="sw">Swahili</option>
            <option value="tg">Tajik</option>
            <option value="th">Thai</option>
            <option value="tl">Tagalog</option>
            <option value="tr">Turkish</option>
            <option value="tt">Tatar</option>
            <option value="uk">Ukrainian</option>
            <option value="ur">Urdu</option>
            <option value="uz">Uzbek</option>
            <option value="vi">Vietnamese</option>
            <option value="zh">Chinese</option>

        </select>

</div>






        <textarea class="form-username form-control" rows="4" cols="50" id="txtarea2" name=txttranslateto>
        <% String st=(String)request.getAttribute("passValue");
        if(st!=null){
        	out.println(st);
        }
        %>
</textarea>

</div>



   <div  style="display:block;padding:10px">
    <!--<input type="submit" name=submittext value="Translate"/>-->
     <button type="submit" class="btn">Translate</button>



    <!--<button type="reset" value="Reset">Reset</button></div>-->
 <script>
function swapValues(){
var tmp = document.getElementById("txtarea1").value;
document.getElementById("txtarea1").value = document.getElementById("txtarea2").value;
document.getElementById("txtarea2").value = tmp;

}
</script>

<input type="button" class="btn btn-primary" id="go" onclick="swapValues()" value="Swap">
   <button type="button" class="btn btn-info" value="Reset">Reset</button>

</form>
 <div style="padding:30px" > <a href=" http://translate.yandex.com/">Powered by Yandex.Translate</a></div>


<form  class="class="col-sm-2 col-sm-offset-2 text" id="logout" method="link" action="logoutprocess.jsp">

    

        <input class="btn btn-warning" type="submit" value="Logout"></form>
<script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
     <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

</div>
</body>
</html>