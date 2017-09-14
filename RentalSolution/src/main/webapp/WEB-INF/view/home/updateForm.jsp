<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>this is update page</title>
<script type="text/javascript">
 function save(){
	 document.getElementById("myForm").submit();
 }
 
 function goList(){
	 location.href="/home/list.do";
 }
 
</script>
</head>
<body>
  <form method = "post" action="/home/update.do">
  
  
  <table border="1">
    <tr>
       <th>param1</th>
       <td><c:out value="${obj.param1}"/><input type = "hidden" name="param1" value="${obj.param1}"/></td>
    </tr>
    
    <tr>
       <th>param2</th>
       <td><input type = "text" name="param2" value="${obj.param2}"/></td>
    </tr>
    
    <tr>
       <th>param3</th>
       <td><input type = "text" name="param3" value="${obj.param3}"/></td>
    </tr> 
   </table>
  
  <input type = "submit" value="저장" onclick="javascript:save()" />
  <input type = "button" value="취소" onclick="javascript:goList()"/>
 </form>
</body>
</html>