<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>   
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
    <div id = "wrapper">
        <form id = "loginForm" method="post" action="${pageContext.request.contextPath}/login/login.do">
            <input type="text" name="userId" placeholder="ID 입력"/>
            <input type="text" name="password" placeholder="PW 입력...."/>
            <input type="submit" value="로그인"/>        
        </form>
    </div>
</body>
</html>