<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ include file="/pages/common/back-common.jsp"%>
<%@ include file="/pages/common/taglib.jsp"%>
<html>
    <head>
        <title>创建Event</title>
         <script type='text/javascript' src="<ls:templateResource item='/common/js/jquery.js'/>"></script>
         <script type='text/javascript' src="<ls:templateResource item='/common/js/jquery.validate.js'/>" /></script>
        <link rel="stylesheet" type="text/css" media="screen" href="<ls:templateResource item='/common/css/indexJpgForm.css'/>" />
        <style type="text/css" media="all">
          @import url(<ls:templateResource item='/css/screen.css'/>);
        </style>
        <script language="javascript">
		    $.validator.setDefaults({
		    });

    $(document).ready(function() {
    jQuery("#form1").validate({
            rules: {
            banner: {
                required: true,
                minlength: 5
            },
            url: "required"
        },
        messages: {
            banner: {
                required: "Please enter banner",
                minlength: "banner must consist of at least 5 characters"
            },
            url: {
                required: "Please provide a password"
            }
        }
    });
 
      $("#col1 tr").each(function(i){
      if(i>0){
         if(i%2 == 0){
             $(this).addClass('even');
         }else{    
              $(this).addClass('odd'); 
         }   
    }
     });   
         $("#col1 th").addClass('sortable'); 
});
</script>
</head>
    <body>
        <form action="<ls:url address='/admin/event/save'/>" method="post" id="form1">
            <input id="eventId" name="eventId" value="${event.eventId}" type="hidden">
            <div align="center">
            <table border="0" align="center" class="${tableclass}" id="col1">
                <thead>
                    <tr class="sortable">
                        <th colspan="2">
                            <div align="center">
                                创建Event
                            </div>
                        </th>
                    </tr>
                </thead>
     			     <tr>
        <td>
          <div align="center">UserId: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="userId" id="userId" value="${event.userId}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">UserName: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="userName" id="userName" value="${event.userName}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Type: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="type" id="type" value="${event.type}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Operation: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="operation" id="operation" value="${event.operation}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">RelateData: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="relateData" id="relateData" value="${event.relateData}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">CreateTime: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="createTime" id="createTime" value="${event.createTime}" /></p>
        </td>
      </tr>

                <tr>
                    <td colspan="2">
                        <div align="center">
                            <input type="submit" value="添加" />
                            <input type="reset" value="重置" />
                            <input type="button" value="返回"
                                onclick="window.location='<ls:url address="/admin/event/query"/>'" />
                        </div>
                    </td>
                </tr>
            </table>
           </div>
        </form>
    </body>
</html>

