
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Javascript for the date picker -->

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="datepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css"/>
<script type="text/javascript" src="datepicker/moment.js"></script>
<script type="text/javascript" src="datepicker/daterangepicker.js"></script>


  <label class="col-sm-4 control-label  requiredField" for="date2">
  <%--  Date of Birth *--%>
   <%-- <span class="asteriskField">--%>

<%--
    </span>
--%>
  </label>

  <div class="col-sm-8">
    <input class="form-control" id="date2" name="date2" type="text" required/>
  </div>



<script>
  $('#date2').daterangepicker({


    "singleDatePicker": true,
    "showDropdowns": true,
    "startDate": "05/09/2016"

  });

</script>

