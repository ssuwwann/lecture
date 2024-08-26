<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.threefour.homelearn.course.domain.Pager" %>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon icons -->
    <link href="resources/images/favicon.png" rel="shortcut icon">

    <!-- All CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/themify-icons.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/style.css">

    <title>Elearning - Tutor, Education HTML Template</title>
  </head>
  <body class="courses-page">

    <!-- Preloader -->
    <div id="preloader">
      <div id="status"></div>
    </div>

    <!-- Header strat -->
<%@ include file="header.jsp" %>
    <!-- Page feature start -->
    <section class="page-feature">
      <div class="container text-center">
        <h2>Courses</h2>
        <div class="breadcrumb">
          <a href="home.html">Home</a>
          <span>/ Courses</span>
        </div>
      </div>
    </section>
    <!-- Page feature end -->

    <!-- Main form start -->
    <section class="main-form pb-0">
      <div class="container">
        <div class="m-search-form">
        
          <form action="courseSearch.do" method="post">
            <input type="text" name="name" placeholder="강좌명을 입력하세요.">
            <input type="hidden" name="pageNum" value="1">
            <input type="hidden" name="pageSize" value="3">
            <button type="submit">검색하기</button>
          </form>
          <select id="keyword" name="keyword" onchange="ff(this)">
     			<option name="keyword" value="writer">인기순</option>
		       <option name="keyword"value="subject">평점순</option>
    </select>
     <select id="cate" name="cate" onchange="fff(this)">
          			<option name="cate" value="korean1">과목</option>
     			<option name="cate" value="korean">국어</option>
		       <option name="cate"value="english">영어</option>
		       <option name="cate"value="math">수학</option>
    </select>
        </div>
      </div>
    </section>
    <!-- Main form end -->

    <!-- Courses section start -->
    <c:if test="${empty pager.list}">
    	<div align="center">
    		<td style="margin:auto;!important;"><h1>해당하는 데이터가 없습니다</h1></td>
    	</div>
    	</c:if>
    	  <section class="courses">
      <div class="container" >
       
    	<c:forEach items="${pager.list}" var="course">
    <div class="col-lg-4 col-md-6"  style="display:inline-block; width: 33%;">
            <div class="single-course">
              <figure class="course-thumb">
                <img src="resources/images/${course.ffname}" alt="">
                <strong class="ribbon">$ ${course.price}</strong>
              </figure>
              <div class="course-content">
                <h3><a href="courseDetail.do?course_id=${course.id}">${course.name }</a></h3>
                <p>${course.description }</p>
                <div class="enroll">
                  <div class="ratings">
                    <span class="total-students"><i class="ti-user"></i>  Students</span>
                    <a href="#"><i class="ti-star"></i></a>
                    <a href="#"><i class="ti-star"></i></a>
                    <a href="#"><i class="ti-star"></i></a>
                    <a href="#"><i class="ti-star"></i></a>
                    <a href="#"><i class="ti-star"></i></a>
					<span>평점:9.5</span>&nbsp;
                    <span class="enrolled">(330)</span>
                  </div>
                  <div class="course-meta text-right">
                    <!-- <strong class="course-price">$29.00</strong> -->
                    <a href="#" class="btn btn-filled">수강신청 하기</a>
                  </div>                 
                </div>
              </div>
            </div>
        
        </div>
    </c:forEach>
        </div>
      </div>
    <%
	Pager p = (Pager)request.getAttribute("pager");
    %>
       <div class="pagination" align="center">
       <a  href="coursesList.do?pageNum=<%=p.getPageNum()-1%>&pageSize=<%=p.getPageSize() %>&blockSize=<%=p.getBlockSize() %>">prev</a>
         <%
   	
   	
   	//int i=1;
   	
   		for(int i=p.getPageNum();i<=3;i++) {
  		
   	%>
         
        
          <a class="current-page" href="coursesList.do?pageNum=<%=p.getPageNum()+1%>&pageSize=<%=p.getPageSize() %>&blockSize=<%=p.getBlockSize() %>"><%=i %></a>
            <%} %> 
        <a href="coursesList.do?pageNum=<%=p.getPageNum()+1%>&pageSize=<%=p.getPageSize() %>&blockSize=<%=p.getBlockSize() %>">next</a>
            페이지 사이즈 : 
    <select id="psId" name="ps" onchange="f(this)">
     			<option name="city" value="3">사이즈</option>
    		   <option name="city" value="3">3</option>
		       <option name="city"value="6">6</option>
		       <option name="city"value="9">9</option>
    </select>
        </div>
      </div>
      
    </section>
    	
      
         
    <!-- Courses section end -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script language="javascript">
/* $( document ).ready(function() {
	 if (!location.hash) { 
		for(let i=0;i<3;i++){
			location.hash = '#reload';

			location.href = "coursesList.do";
		}
			

		}	 
	});*/
       function f(select){
           var el = document.getElementById("psId").value;
           let pageNum = <%=p.getPageNum()%>
           console.log('pageNum: '+ pageNum);
           let pageSize = <%=p.getPageSize()%>
           let blockSize =<%=p.getBlockSize()%>
           let startPage = <%=p.getStartPage()%>
           let endPage = <%=p.getEndPage()%>
          
           location.href="coursesList.do?pageNum="+pageNum+"&pageSize="+el+"&blockSize="+blockSize+"&startPage="+startPage+"&endPage="+endPage;
       }
       
     //  function ff(select){
      //     var keyword = document.getElementById("keyword").value;
       //    var search = document.getElementById("search").value;
       //   
       //    location.href="search.do.json?keyword="+keyword+"&search="+search;
      // }
       function fff(select){
           var cate = document.getElementById("cate").value;
         
          
           location.href="searchCate.do?cate="+cate;
       }
       </script>
    <!-- Footer strat -->
    <%@ include file="footer.jsp" %>
  </body>
</html>