<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC  "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
  $(document).ready(function(){
	  $("#logout").click(function(){
		  location.replace("${pageContext.request.contextPath}/login/logout.do");
	  });
	  
  });
</script>
<title>t2</title>
</head>
<body>
로그인 아이디 : ${login.userId}

<br/>

<button id = "logout">로그아웃</button> 
<br/>
<br/>
</body>
</html>