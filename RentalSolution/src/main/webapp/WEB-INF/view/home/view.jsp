<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>this is view page</title>
<script type="text/javascript">
if("${message}"!=""){
	alert("${message}");
}
 function goUpdateForm(){
	 location.href="/home/updateForm.do?param1=${obj.param1}";
 }
 
 function goList(){
	 location.href="/home/list.do";
 }
 
 function deleteData(){
	 location.href="/home/delete.do?param1=${obj.param1}"; 
 }
</script>
</head>
<body>
<p>view 출력</p>
  <table border="1">
    <tr>
       <th>param1</th>
       <td><c:out value="${obj.param1}"/></td>
    </tr>
    
    <tr>
       <th>param2</th>
       <td><c:out value="${obj.param2}"/></td>
    </tr>
    
    <tr>
       <th>param3</th>
       <td><c:out value="${obj.param3}"/></td>
    </tr>
  </table>
  
  <input type = "button" value="수정" onclick="javascript:goUpdateForm()"/>
  <input type = "button" value="취소" onclick="javascript:goList()"/>
  <input type = "button" value="삭제" onclick="javascript:deleteData()"/>
 
   <br/>
  <a href="http://localhost:8080/home/list.do">list로 돌아가기</a>
</body>
</html>