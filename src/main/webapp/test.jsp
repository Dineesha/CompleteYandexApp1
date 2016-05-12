<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">-->
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="successDesign.css">

<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<%--<link rel="stylesheet" href="assets/bootstrap-table-master/src/bootstrap-table.css">
<script src="assets/bootstrap-table-master/dist/locale/*"></script>
<script src="assets/bootstrap-table-master/dist/bootstrap-table-locale-all.js"></script>
<script src="assets/bootstrap-table-master/dist/bootstrap-table-locale-all.min.js"></script>
<script src="assets/bootstrap-table-master/dist/bootstrap-table.min.js"></script>
<link rel="stylesheet" href="assets/bootstrap-table-master/dist/bootstrap-table.min.css">
<script src="assets/bootstrap/js/jquery-2.2.3.min.js"></script>
<script src="assets/bootstrap/js/jquery-2.2.3.js"></script>--%>
<div id="toolbar" class="btn-group">
    <button type="button" class="btn btn-default">
        <i class="glyphicon glyphicon-plus"></i>
    </button>

    <button type="button" class="btn btn-default">
        <i class="glyphicon glyphicon-trash"></i>
    </button>
</div>
<table data-toggle="table"
       data-url="http://mikepenz.com/jsfiddle/"
       data-pagination="true"
       data-side-pagination="server"
       data-page-list="[5, 10, 20, 50, 100, 200]"
       data-search="true"
       data-height="300"
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
            alert('You click edit icon, row: ' + JSON.stringify(row));
            console.log(value, row, index);
        },
        'click .remove': function (e, value, row, index) {
            alert('You click remove icon, row: ' + JSON.stringify(row));
            console.log(value, row, index);
        }
    };
</script>



<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>

<!-- Latest compiled and minified Locales -->
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/locale/bootstrap-table-zh-CN.min.js"></script>
