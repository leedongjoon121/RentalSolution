<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<link rel = "stylesheet" href="${PageContext.request.contextPath}/css/common.css"/>
<script type="text/javascript">
      function layout_ajax(url, type, data, callback){
    	  $.ajax({
    		  url:url,
    		  type:type,
    		  data:data,
    		  success:callback,
    		  error:function(xhr,status,error){
    			  
    		  }
    	  });
      }
</script>
</head>
<body>
   <div id = "wrapper">
      <div id = "header">
         <tiles:insertAttribute name="header"/> 
      </div>
 
      <div id = "content">
         <tiles:insertAttribute name="content"/> 
      </div>

      <div id = "footer">
         <tiles:insertAttribute name="footer"/> 
      </div>
   </div>
</body>
</html>