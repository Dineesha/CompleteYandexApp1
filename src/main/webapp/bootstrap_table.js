$(document).ready(function () {
    $.ajax({
        type: "POST",
        url: "SearchServlet",
        dataType: "json",
        success: function (result) {

            $('#table').bootstrapTable({
                pagination: true,
                pageSize: 5,
                pageList: [10, 25, 50, 100, 200],
                //search: true,
                showColumns: true,
                showRefresh: true,
                showToggle:true,
                detailView:true,
                //detailFormatter: detailFormatter,
               clickToSelect: true,

                singleSelect: true,
                toolbar: '#toolbar',

                minimumCountColumns: 3,
                columns: [{
                    field: 'State',
                    checkbox: true

                }, {
                    field: 'f_name',
                    title: 'First Name :',
                    sortable: true
                }, {
                    field: 'l_name',
                    title: 'Last Name :',
                    sortable: true
                }, {
                    field: 'DOB',
                    title: 'DOB :',
                    sortable: true
                }, {
                    field: 'mobile',
                    title: 'Phone  :'
                }, {
                    field: 'e_mail',
                    title: 'E-mail :'
                }, {
                    field: 'country',
                    title: 'Country :'
                }, {
                    field: 'city_id',
                    title: 'City :'
                }, {
                    field: 'user_name',
                    title: 'Username :',
                    sortable: true,
                    searchable:true
                },{
                    field: 'Options',
                    title: 'Options :',
                    align: 'center',
                    formatter: operateFormatter,
                    events: operateEvents
                }],
                data: result
            });
        }
    });

})




function operateFormatter(value, row, index) {
    return [
        '<a class="like" href="#" title="Like" >',
        '<em class="fa fa-pencil"></em>',
        '</a>  ',
        '<a class="remove" href="#" title="Delete">',
        '<i class="glyphicon glyphicon-remove"></i>',
        '</a>'
    ].join('');
}

window.operateEvents = {
    'click .like': function (e, value, row, index) {
        var data1 = JSON.stringify(row);
        var objc1 = JSON.parse(data1);

        $('#update-form-username').val(objc1["user_name"]);
        $('#update-first-name').val(objc1["f_name"]);
        $('#update-last-name').val(objc1["l_name"]);
        $('#date2').val(objc1["niceDate"]);
        $('#update-form-mobile').val(objc1["mobile"]);
        $('#update-form-email').val(objc1["e_mail"]);
        $('#update-country.value').val(objc1["country"]);
        $('#update-form-city').val(objc1["city_id"]);
        //$('#update-password').val(objc1["niceDate"]);


        $('#myModal2').modal('show');


    },

 'click .remove': function (e, value, row, index) {
        var data2 = JSON.stringify(row);
        var objc2 = JSON.parse(data2);
        $('#lblUname').text(objc2["user_name"]);
        $('#myModal1').modal('show');


    }
};

$(document).ready(function(){
    $("#btnDelt").click(function(){
        var val=$("#lblUname").text();

        $.ajax({

            type:"POST",
            url:"DeleteUserServlet",
            data:{"val":val},
            success:function(msg){

                if(msg==1){
                    alert("Deleted user !");
                    $("#myModal1").modal('hide');

                }else{
                    alert("Error in deleting !");
                    $("#myModal1").modal('hide');
                }
            }
        })

    });
});


$(document).ready(function(){
    $("#updatebtn").click(function(){

        var user=$("#update-form-username").val();

        var uf_name = $("#update-first-name").val();
        var ul_name = $("#update-last-name").val();
        var udate = $("#date2").val();
        var ucountry = $("#update-country").val();
        var ucity = $("#update-form-city").val();
        var uemail = $("#update-form-email").val();
        var umobile = $("#update-form-mobile").val();
        var upw = $("#update_password").val();

      $.ajax({

            type:"POST",
            url:"UserUpdateServlet",
            data:{"uu_name":user,"uf_name":uf_name,"ul_name":ul_name,"udate":udate ,"ucountry":ucountry,"ucity":ucity,
                "uemail":uemail,"umobile":umobile,"upw":upw},

            success:function(msg){

                 if(msg==1){
                    alert("Updated details Successfully " + user);


                }else{
                   alert("cannot update!");
                  $("#myModal1").modal('hide');
                }
            }
        })
 ;
    });
});


