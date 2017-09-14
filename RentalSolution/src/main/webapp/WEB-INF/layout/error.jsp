<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><tiles:insertAttribute name="title"/></title>
</head>
<body>
   <div id = "wrapper">
       <h1>Error 발생</h1>
       <div id = "content">
           <tiles:insertAttribute name = "content"/>
       </div>
   </div>
</body>
</html>