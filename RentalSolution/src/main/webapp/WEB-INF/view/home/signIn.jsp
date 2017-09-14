<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>API </title>

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
#tweetBtn{
    matgin-left : 100px;
    padding-left : 100px;
}
</style>


 <!--부트 스트랩 --> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      
      <!-- 네이버 api --> 
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>   


   <!-- 카카오 url-->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>    
<script>
  window.onload= function(){
     Kakao.init('d7fc30e54cf2da3c0d85200663e5d1c2');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        // 로그인 성공시, API를 호출합니다.
        Kakao.API.request({
          url: '/v1/user/me',
          success: function(res) {
            alert(JSON.stringify(res));
          },
          fail: function(error) {
            alert(JSON.stringify(error));
          }
        });
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }
    });
    
    Kakao.Story.createShareButton({
      container: '#kakaostory-share-button',
      url: 'https://developers.kakao.com',
      text: '웅진 렌탈 테스트중~~~~~~~~~~~~~~~~~~~~~ :)'
    });
  }
</script>    

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
  <h1>웅진 Rental Solution </h1>
  
 <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
 <div class="container">
  <div class="form-group">     
  
  <form id = "login_form" method = "post" action="/home/survey.do" >    
    아이디 : <input type = "text" id="id_val" name="param1" class="form-control">
   
    <br/>
    
    비밀번호 : <input type = "text" id="pw_val" name="param2" class="form-control">
    <br/>
    
	  <input type = "submit" value="로그인"  class="loginbtn"/>
      <input type = "button" value="취소" onclick="javascript:goList()" class="loginbtn"/>
	  
   
  </form>
    <a href="http://localhost:8080/home/insertForm.do" class="btn btn-info">회원가입</a>
   </div>
  </div>  
 </div>    
  

<center>  
<a id="kakao-login-btn"></a>
	
	

<div id="naver_id_login"></div>
<script>
    var naver_id_login = new naver_id_login("BXcmC8MqIcsEoupFx9jm", "http://localhost:8080/home/list.do");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8080/home/insertForm.do");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  
</script>        
	

	
</center>
     
 </div>     

 
 <!-- 트위터 api -->  
 <script>window.twttr = (function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0],
	    t = window.twttr || {};
	  if (d.getElementById(id)) return;
	  js = d.createElement(s);
	  js.id = id;
	  js.src = "https://platform.twitter.com/widgets.js";
	  fjs.parentNode.insertBefore(js, fjs);
	  t._e = [];
	  t.ready = function(f) {
	    t._e.push(f);
	  };
	  return t;
	}(document, "script", "twitter-wjs"));
</script>
 
<a class="twitter-share-button"
  href="https://twitter.com/intent/tweet?text=Hello%20world"
  data-size="large" id = "tweetBtn">   
 
 </body>
 </html>
