<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>    


 <script type="text/javascript">

var pagePerRecord; // 페이지 전체 크기 

function search(i){
    
     if(i != undefined && i != ""){
    	 document.getElementById("pageIndex").value = i;
     }	  		   
		   document.getElementById("search").submit();
 }	

function pageChange(type){
	var lastPage = "${search.pageCount}";
	var pageIndex = document.getElementById("pageIndex");
	
	switch(type){
	   case 1 :
		   document.getElementById("pageIndex").value = 1;
		   break;
	   case 2 :
		   if(pageIndex.value > 1){
			   pageIndex.value = Number(pageIndex.value) -1;
		   }
		   break;
	   case 3 : 
		   if(pageIndex.value < lastPage){
			   pageIndex.value = Number(pageIndex.value) +1;
		   }
		   break;
	   case 4 :
		   document.getElementById("pageIndex").value = lastPage;
		   break;
	}
	document.getElementById("search").submit();
}


 
  $(document).ready(function(){
	  
	  
	  $("#getList").click(function(){
			var requestData = $("#search").serialize();
			
			layout_ajax(
			      "${pageContext.request.contextPath}/home/list.json",
			      "post",
			      requestData,
			      function(data){
			    	  console.log(data);
			    	  console.log(data.list);
			      }
			);
		});
	  
    
  });  

  window.onload = function(){
	  document.getElementById("pagePerRecord").value = "${search.pagePerRecord}";
  }
</script>
 

<button id = "getList">ajax 호출 테스트</button>

<h2>회원 정보 리스트</h2>
<table border = "1">
  <tr>
      <th>param1</th>
      <th>param2</th>
      <th>param3</th>
  </tr>
  <c:forEach var = "obj" items="${list}">
     <tr>
        <td><a href="/home/view.do?param1=${obj.param1}"><c:out value="${obj.param1}"/></a></td>
        <td><c:out value="${obj.param2}"/></td>
        <td><c:out value="${obj.param3}"/></td>
     </tr>
  </c:forEach>
</table>

<a href="/home/insertForm.do">등록</a>
<a href="http://localhost:8080/home/signIn.do">로그인</a>
