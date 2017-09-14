<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags" prefix="spring" %>    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		<script src="${PageContext.request.contextPath}/js/common.js"></script>
	    <link rel = "stylesheet" href="${PageContext.request.contextPath}/css/common.css"/>
	</head> 
	<body>
		<h2>${message}</h2>
		<center>
		<p>---------------- 다국어 처리 변경 부분 ----------------</p>
		<spring:message code="showMessage.title"/>
		<p>------------------------------------------------</p>
		</center>
		<br/>
		
		<a href="http://localhost:8080/showMessage.do?lang=ko">한국어</a>
		<a href="http://localhost:8080/showMessage.do?lang=en">영어</a>
  
      <br/>
      
    <a href="http://127.0.0.1:8080/showMessage3.do">select 결과 확인</a>  
      <spring:message code ="showMessage.title"/>
   
      <table border="1">
          <c:forEach var="obj" items="${list}">
             <tr>
                <td><c:out value="${obj.param1}"/></td>
                <td><c:out value="${obj.param2}"/></td>
             </tr>
             
          </c:forEach>
      </table>
	</body>
</html>
