<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<!-- survey -->
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
	
	<title>woongjin survey</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<!--  ���̹� api test -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	
	<!-- bootstrap-->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

</head>
<body>

<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-large w3-light-grey">
    <div class="w3-col s3">
      <a href="#survey" class="w3-button w3-block">Survey</a>
    </div>
     <div class="w3-col s3">
      <a href="#cody" class="w3-button w3-block">Cody</a>
    </div>

  </div>
</div>

<!-- Content -->
<div class="w3-content" style="max-width:1100px;margin-top:80px;margin-bottom:80px" id="survey">

  <div class="w3-panel">
    <h1><b>���� �������� ����.. </b></h1>
    <p>�������׿� üũ�� �ּ���.. ���� ����� ������� ���� ������ ���� �����ϴ�. (iphone6 ���������)</p>
  </div>

 <div class="container">
	 <button class="btn btn-info" id = "submit_survery">�������� ���� ����(���� �ȸ���...)</button>
 </div>
	
  <!-- Slideshow -->
  <div class="w3-container">
    <div class="w3-display-container mySlides">
     
     <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>������ ������ ǰ���� ?</h3>
      �� : <input type = "checkbox" id="p1_1_1">
      �� : <input type = "checkbox" id="p1_1_2">
      �� : <input type = "checkbox" id="p1_1_3">
    </div>     
     
      <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>������ ���� �ŷڵ��� ?</h3>
     �� : <input type = "checkbox" id="p1_2_1">
     �� : <input type = "checkbox" id="p1_2_2">
     �� : <input type = "checkbox" id="p1_2_3">
      </div>  
      
     <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>�ڵ�������� ���񽺰� ģ�� �߳��� ?</h3>
     �� : <input type = "checkbox" id="p1_3_1">
     �� : <input type = "checkbox" id="p1_3_2">
     �� : <input type = "checkbox" id="p1_3_3">    
     </div> 
      
    </div>
    
    
    <div class="w3-display-container mySlides">    
   <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>�� ���� ���ֳ��� ?</h3>
      �� : <input type = "checkbox" id="p2_1_1">
      �� : <input type = "checkbox" id="p2_1_2">
      �� : <input type = "checkbox" id="p2_1_3">
    </div>     
     
      <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>��� ó���� �� �ǳ���? </h3>
     �� : <input type = "checkbox" id="p2_2_1">
     �� : <input type = "checkbox" id="p2_2_2">
     �� : <input type = "checkbox" id="p2_2_3">
      </div>  
      
     <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>������ ?</h3>
     �� : <input type = "checkbox" id="p2_3_1">
     �� : <input type = "checkbox" id="p2_3_2">
     �� : <input type = "checkbox" id="p2_3_3">    
     </div> 
    </div>
    
    <div class="w3-display-container mySlides">
       <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>�������������� ?</h3>
      �� : <input type = "checkbox" id="p3_1_1">
      �� : <input type = "checkbox" id="p3_1_2">
      �� : <input type = "checkbox" id="p3_1_3">
    </div>     
     
      <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>�ηηηηηηηηη� ?</h3>
     �� : <input type = "checkbox" id="p3_2_1">
     �� : <input type = "checkbox" id="p3_2_2">
     �� : <input type = "checkbox" id="p3_2_3">
      </div>  
      
     <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>�κκκκκκκκκκ� ?</h3>
     �� : <input type = "checkbox" id="p3_3_1">
     �� : <input type = "checkbox" id="p3_3_2">
     �� : <input type = "checkbox" id="p3_3_3">    
     </div> 
    </div>
   
    <!-- Slideshow next/previous buttons -->
    <div class="w3-container w3-dark-grey w3-padding w3-xlarge">
      <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div>
      <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>
    
      <div class="w3-center">
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
      </div>
    </div>
  </div>
</div>

 <div class="w3-row-padding" id="cody">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">�ڵ� �Ұ�</span>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="/w3images/team1.jpg" alt="John" style="width:100%">
        <div class="w3-container">
          <h3>ȫ�浿</h3>
          <p class="w3-opacity">������ ��ô���</p>
          <p>�� ������ ���� �ּ��� ���ϰڽ��ϴ�.</p>
          <p><button class="w3-button w3-light-grey w3-block">�����ʺ���(�����ȸ���..)</button></p>
        </div>
      </div>
    </div>

   
  
  </div>

<script>
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function currentDiv(n) {
  showDivs(slideIndex = n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
	
	
<!-- naver api-->	
    <script type="text/javascript">
	  var naver_id_login = new naver_id_login("iWOonPKbNSET8UJd3l3h", "https://leedongjoon121.github.io/Javascript_Study/");
	  // ���� ��ū �� ���
	  alert("����� ���� ��ū��  : "+naver_id_login.oauthParams.access_token);
	  // ���̹� ����� ������ ��ȸ
	  naver_id_login.get_naver_userprofile("naverSignInCallback()");
	  // ���̹� ����� ������ ��ȸ ���� ������ ������ ó���� callback function
	  function naverSignInCallback() {
	    alert("����� �̸��� : "+naver_id_login.getProfileData('email'));
	    alert("����� �г��� : "+naver_id_login.getProfileData('nickname'));
	    alert("����� ���ɴ� : "+naver_id_login.getProfileData('age'));
	   }
     </script>	
	
</body>
</html>