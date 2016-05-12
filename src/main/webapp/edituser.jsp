<%--
  Created by IntelliJ IDEA.
  User: hsenid
  Date: 5/5/16
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#editmodal">Open Modal</button>
<div class="modal fade" id="editmodal" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <%--<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>--%>
            <div class="modal-body">
                <jsp:include page="signup.jsp" />
            </div>
            <%--<div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>--%>
        </div>
    </div>
</div>
