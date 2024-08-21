<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Favicon icons -->
  <link href="${pageContext.request.contextPath}/resources/images/favicon.png" rel="shortcut icon">

  <!-- All CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">


  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member/mypage.css">
  <script defer type="module" src="${pageContext.request.contextPath}/resources/js/member/mypage.js"></script>
  <title>Elearning - Tutor, Education HTML Template</title>
</head>
<body>

<!-- Preloader -->
<div id="preloader">
  <div id="status"></div>
</div>

<!-- Header strat -->
<header class="header">
  <div class="container">
    <nav class="navbar">
      <!-- Site logo -->
      <a href="home-01.html" class="logo">
        <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="">
      </a>
      <a href="javascript:void(0);" id="mobile-menu-toggler">
        <i class="ti-align-justify"></i>
      </a>
      <ul class="navbar-nav">
        <li class="has-menu-child current-menu-item">
          <a href="javascript:void(0);">Home</a>
          <ul class="sub-menu">
            <li><a href="home-01.html">Home 01</a></li>
            <li><a href="home-02.html">Home 02</a></li>
            <li><a href="home-03.html">Home 03</a></li>
          </ul>
        </li>
        <li><a href="about.jsp">About</a></li>
        <li class="has-menu-child">
          <a href="javascript:void(0);">Courses</a>
          <ul class="sub-menu">
            <li><a href="courses.html">Courses</a></li>
            <li><a href="course-details.html">Course Details</a></li>
          </ul>
        </li>
        <li class="has-menu-child">
          <a href="#">Blog</a>
          <ul class="sub-menu">
            <li><a href="blog.html">Blog</a></li>
            <li><a href="blog-details.html">Blog Details</a></li>
          </ul>
        </li>
        <li class="has-menu-child">
          <a href="#">Events</a>
          <ul class="sub-menu">
            <li><a href="events.html">Events</a></li>
            <li><a href="event-details.html">event Details</a></li>
          </ul>
        </li>
        <li class="has-menu-child">
          <a href="javascript:void(0);">Pages</a>
          <ul class="sub-menu">
            <li><a href="pricing.html">Pricing</a></li>
            <li><a href="terms-condition.html">Terms & Conditions</a></li>
            <li><a href='/members/login'>Login</a></li>
            <li><a href="signup">Sign up</a></li>
          </ul>
        </li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href='/members/login'>Log in</a></li>
      </ul>
    </nav>
  </div>
</header>
<!-- Header strat -->

<!-- Page feature start -->
<section class="page-feature">
  <div class="container text-center">
    <h2>Contact</h2>
  </div>
</section>
<!-- Page feature end -->

<!-- Contact section start -->
<section class="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-7 col-md-9 m-auto text-center">
        <button id="logoutBtn">로그아웃</button>
        <div class="sec-heading">
          <span class="tagline"></span>
          <div id="profileImageWrapper" class="sec-title">
            <img id="profileImage" src="${pageContext.request.contextPath}/resources/images/member/금발카리나.jpg"
                 alt="프로필 이미지">
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-8">
        <form action="" method="post" enctype="multipart/form-data">
          <label for="profileImageInput">
            <img src="${pageContext.request.contextPath}/resources/images/member/카메라.png" alt="">
            <input type="file" name="profileImage" id="profileImageInput" style="display: none">
          </label>
          <div class="row">
            <div class="form-group col-sm-6">
              <label for="email">이메일</label>
              <input type="text" name="email" class="form-control" id="email" readonly>
            </div>
            <div class="form-group col-sm-6">
              <label for="createdAt">가입날짜</label>
              <input type="text" class="form-control" id="createdAt" readonly>
            </div>
            <div class="form-group col-sm-6">
              <label for="nickname">닉네임</label>
              <input type="text" name="nickname" class="form-control" id="nickname">
            </div>
            <div class="form-group col-sm-6">
              <label for="password">비밀번호</label>
              <input type="password" name="password" class="form-control" id="password" disabled>
            </div>
          </div>
          <div class="form-group">
            <label for="message">Your Message</label>
            <textarea name="message" class="form-control" id="message" placeholder="Your Message"
                      required=""></textarea>
          </div>
          <button type="submit" class="btn btn-default">정보 수정</button>
        </form>
      </div>
      <div class="col-md-4">
        <aside class="sidebar">
          <div class="widget contact-info">
            <h3 class="widget-title">Contact info</h3>
            <p>여기다 무엇을 적어야 좋다고 소문이 날까?</p>
            <div>
              <h6>Location Info</h6>
              <span>Address line 1, Avg Centre Point.
                  Level 5, New Yourk City - USA</span>
            </div>
            <div>
              <h6>Hotline numbers</h6>
              <a href="tel:+12345678912">+123 4567 8912</a>
              <a href="tel:+32176542198">+321 7654 2198</a>
            </div>
            <div>
              <h6>Email Us</h6>
              <a href="mailto:youremail@domain.com">youremail@domain.com</a>
              <a href="mailto:help@example.com">help@example.com</a>
            </div>
          </div>
        </aside>
      </div>
    </div>
  </div>
</section>
<!-- Contact section end -->

<!-- Footer strat -->
<footer class="footer">
  <div class="foo-top">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="widget widget-navigation">
            <h4 class="widget-title">Information for</h4>
            <ul>
              <li><a href="#">Prospective undergraduates</a></li>
              <li><a href="#">Prospective graduate students</a></li>
              <li><a href="#">Businesses/Partnerships</a></li>
              <li><a href="#">Visitors/Tourists</a></li>
              <li><a href="#">Parliamentarians</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="widget widget-navigation">
            <h4 class="widget-title">Quick Links</h4>
            <ul>
              <li><a href="#">Contact Searches</a></li>
              <li><a href="#">Jobs and Vacancies</a></li>
              <li><a href="#">University ${pageContext.request.contextPath}/resources/images</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Terms and Conditions</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="widget widget-navigation">
            <h4 class="widget-title">Information About</h4>
            <ul>
              <li><a href="#">Strategic Plan</a></li>
              <li><a href="#">Fees and Funding</a></li>
              <li><a href="#">Museums and collections</a></li>
              <li><a href="#">Statement on Modern Slavery</a></li>
              <li><a href="#">Data privacy / GDPR</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="widget widget-navigation">
            <h4 class="widget-title">Security Brand</h4>
            <ul>
              <li><a href="#">Privacy Statement</a></li>
              <li><a href="#">Report Copyright Infringement</a></li>
              <li><a href="#">Report Security Issue</a></li>
              <li><a href="#">Trademark Notice</a></li>
              <li><a href="#">Access Control</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="foo-btm">
    <div class="container">
      <p class="copyright">Copyright © 2019 <a href="#">themeies.com</a>. All rights reserved.</p>
    </div>
  </div>

</footer>
<!-- Footer end -->

<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxYLtelXg0PGjeTiFDtlN7nrH_47buDWo"></script>
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>