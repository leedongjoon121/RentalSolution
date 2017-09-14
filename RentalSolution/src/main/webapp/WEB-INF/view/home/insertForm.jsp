<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>SignUp </title>

<!-- share css -->
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>	


<style>
.loginbtn {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>


 <!--부트 스트랩 --> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      

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

 
 <div class="w3-content" style="max-width:1100px;margin-top:80px;margin-bottom:80px">
  <h1>회원가입 </h1>
    
 <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
 <div class="container">
  <div class="form-group">     
  <form id = "login_form" method = "post" action="/home/insert.do" >    
    아이디 : <input type = "text" id="id_val" name="param1" class="form-control">
   
    <br/>
    
    비밀번호 : <input type = "text" id="pw_val" name="param2" class="form-control">
    <br/>
   
     이름 : <input type = "text" id="name_val" name="param3" class="form-control">
    <br/> 
	  <input type = "submit" value="가입"  class="loginbtn"/>
      <input type = "button" value="취소" onclick="javascript:goList()" class="loginbtn"/>
  </form>
 
   </div>
   
  </div>  
 </div>    
 </div>      
 </body>
 </html>
