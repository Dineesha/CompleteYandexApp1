$(document).ready(function () {
var data1=
[
    { "_id" : { "$oid" : "572080e3848efe8b8c1cd985" }, "fname" : null, "lname" : "", "email" : "", "dob" : null, "phone" : "", "country" : "", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "572080fd848efe8b8c1cd986" }, "fname" : "13452", "lname" : "", "email" : "", "dob" : null, "phone" : "", "country" : "", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "5720810e848efe8b8c1cd987" }, "fname" : "13452", "lname" : "wrt", "email" : "wtwt", "dob" : null, "phone" : "wtwrt", "country" : "", "username" : "twrt", "password" : "twrt" },
    { "_id" : { "$oid" : "57208113848efe8b8c1cd988" }, "fname" : "13452", "lname" : "wrt", "email" : "wtwt", "dob" : null, "phone" : "", "country" : "Japan", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "57208144848efe8b8c1cd989" }, "fname" : "dini", "lname" : "d", "email" : "sd", "dob" : null, "phone" : "35425", "country" : "Sri Lanka", "username" : "dd", "password" : "dd" },
    { "_id" : { "$oid" : "572095d0848efe8b8c1cd98a" }, "fname" : "sam", "lname" : "AB", "email" : "sam@gmail.com", "dob" : "2005", "phone" : "12345678", "country" : "USA", "username" : "sam", "password" : "1" },
    { "_id" : { "$oid" : "572175f2848e932f33a2bdf3" }, "fname" : "root", "lname" : "root", "email" : "root@ymail.com", "dob" : "1999", "phone" : "12344657", "country" : "Korea", "username" : "root", "password" : "123" },
    { "_id" : { "$oid" : "5721763c848e932f33a2bdf4" }, "fname" : "dineesha", "lname" : "suraw", "email" : "din@gmail.com", "dob" : "1992", "phone" : "998486555", "country" : "Sri Lanka", "username" : "dineesha", "password" : "1234" },
    { "_id" : { "$oid" : "5721c4e7848e6fdc470ffa58" }, "fname" : "sam", "lname" : "tom", "email" : "tom@gmail.com", "dob" : "2016", "phone" : "4657467467", "country" : "England", "username" : "tom", "password" : "12" },
    { "_id" : { "$oid" : "5721eab4848e9effc186c6ff" }, "fname" : "hsenid", "lname" : "mobile", "email" : "hsenid@hsenid.com", "dob" : "1997", "phone" : "2465537468", "country" : "Sri Lanka", "username" : "hsm", "password" : "hss" },
    { "_id" : { "$oid" : "5722cfc0848e308c13f473a9" }, "fname" : "html", "lname" : "css3", "email" : "css@mail.com", "dob" : "2001", "phone" : "134563675376", "country" : "USA", "username" : "html", "password" : "css" },
    { "_id" : { "$oid" : "5722eaf4848e308c13f473aa" }, "fname" : "sam", "lname" : "peter", "email" : "pete@gmail.com", "dob" : "2001", "phone" : "09923447325", "country" : "England", "username" : "pete", "password" : "pete" },
    { "_id" : { "$oid" : "5722ebd5848e308c13f473ab" }, "fname" : "nisha", "lname" : "dev", "email" : "nisha@mail.com", "dob" : "2012", "phone" : "34645756879", "country" : "Sri Lanka", "username" : "nisha", "password" : "nisha" },
    { "_id" : { "$oid" : "572307f7848e1040b46838c0" }, "fname" : "nsbm", "lname" : "computing", "email" : "nsbm@nsbm.com", "dob" : "2014", "phone" : "23542636357", "country" : "Sri Lanka", "username" : "nsbm", "password" : "nsbm" },
    { "_id" : { "$oid" : "57273c6b848e45376c86ce57" }, "fname" : "apache", "lname" : "maven", "email" : "maven@gmail.com", "dob" : "2011", "phone" : "5686797090", "country" : "England", "username" : "mvn", "password" : "mvn" },
    { "_id" : { "$oid" : "572b093b848ea76ad416a833" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572b093b848ea76ad416a834" }, "fname" : "a1", "lname" : "", "email" : "", "dob" : "2016", "phone" : "", "country" : "", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "572b0947848ea76ad416a835" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572b0957848ea76ad416a837" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572ffbfd848e3fbe95eafc4c" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572ffbfd848e3fbe95eafc4d" }, "fname" : "din", "lname" : "ss", "email" : "ss@mail.com", "dob" : null, "phone" : "25663563577", "country" : "Sri Lanka", "username" : "a", "password" : "a" },
    { "_id" : { "$oid" : "572ffdfc848e9613276ca017" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572ffdfc848e9613276ca018" }, "fname" : "nisa", "lname" : "anu", "email" : "anu@gmail.com", "dob" : null, "phone" : "4645758758", "country" : "Japan", "username" : "nisa", "password" : "anu" },
    { "_id" : { "$oid" : "572ffea8848e9613276ca019" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572ffea8848e9613276ca01a" }, "fname" : "d", "lname" : "d", "email" : "d", "dob" : null, "phone" : "d", "country" : "Korea", "username" : "d", "password" : "d" },
    { "_id" : { "$oid" : "572fff90848e9613276ca01b" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572fff90848e9613276ca01c" }, "fname" : "a", "lname" : "a", "email" : "a", "dob" : null, "phone" : "3426536", "country" : "England", "username" : "a", "password" : "a" },
    { "_id" : { "$oid" : "572fffaf848e9613276ca01d" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "572fffaf848e9613276ca01e" }, "fname" : "kk", "lname" : "mm", "email" : "", "dob" : null, "phone" : "", "country" : "USA", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "5730002a848e9613276ca01f" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "5730002a848e9613276ca020" }, "fname" : "", "lname" : "", "email" : "", "dob" : null, "phone" : "", "country" : "", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "57300056848e9613276ca021" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "57300056848e9613276ca022" }, "fname" : "chathu", "lname" : "vish", "email" : "chathu@gmail.com", "dob" : null, "phone" : "464746846", "country" : "England", "username" : "cc", "password" : "cc" },
    { "_id" : { "$oid" : "573013dd848e10902f57ffcf" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "573013dd848e10902f57ffd0" }, "fname" : null, "lname" : "", "email" : "", "dob" : "05/09/2016", "phone" : "", "country" : "", "username" : "", "password" : "" },
    { "_id" : { "$oid" : "573034e4848ea6f836dbd1fc" }, "database" : "login_form", "table" : "test_user1", "detail" : { "records" : 99, "index" : "vps_index1", "active" : "true" } },
    { "_id" : { "$oid" : "573034e4848ea6f836dbd1fd" }, "fname" : null, "lname" : "", "email" : "", "dob" : "05/09/2016", "phone" : "", "country" : "Sri Lanka", "username" : "", "password" : "" }


];

$(function () {
    $('#table').bootstrapTable({
        data: data1
    });
});
});
