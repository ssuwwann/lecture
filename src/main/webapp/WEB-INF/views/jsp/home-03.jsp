<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Favicon icons -->
  <link href="images/favicon.png" rel="shortcut icon">

  <!-- All CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

  <title>Elearning - Tutor, Education HTML Template</title>
</head>
<body>

<!-- Preloader -->
<div id="preloader">
  <div id="status"></div>
</div>

<!-- Header strat -->
<header class="header abs-header">
  <div class="container">
    <nav class="navbar">
      <!-- Site logo -->
      <a href="home-01.html" class="logo">
        <img src="images/logo.png" alt="">
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

<!-- Banner start -->
<section class="banner ban-01">
  <div class="vector-img">
    <img src="images/vector.png" alt="">
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-7">
        <div class="banner-content">
          <h2><span>Educate!</span> Smart is Great</h2>
          <p>Can'their wherein own upon female without saying made in second the male Own you. Him fill good seasons
            hath</p>
          <a href="#" class="btn btn-default">Become a tutor</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Banner start -->

<!-- Main form start -->
<section class="main-form">
  <div class="container">
    <div class="m-search-form nm-top-130">
      <form action="#">
        <select>
          <option>Find tutor</option>
          <option>Find tutor 1</option>
          <option>Find tutor 2</option>
        </select>
        <input type="text" placeholder="Enter a Subject">
        <input type="text" placeholder="Location">
        <select>
          <option>All Prices</option>
          <option>$300</option>
          <option>$500</option>
        </select>
        <button type="submit">Find now</button>
      </form>
    </div>
  </div>
</section>
<!-- Main form end -->

<!-- Feature section start -->
<section class="feature pt-3">
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <div class="iconBox">
          <img src="images/icons/1.png" alt="" class="img-icon">
          <h5><a href="#">Worldwide Service</a></h5>
          <p>Can their wherein own upon female without saying made in second them male own you. Him fill good last
            seasons hath moved and</p>
          <a href="#" class="read-more">Read More</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="iconBox">
          <img src="images/icons/2.png" alt="" class="img-icon">
          <h5><a href="#">Qualified Trainers</a></h5>
          <p>Can their wherein own upon female without saying made in second them male own you. Him fill good last
            seasons hath moved and</p>
          <a href="#" class="read-more">Read More</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="iconBox">
          <img src="images/icons/3.png" alt="" class="img-icon">
          <h5><a href="#">Job Opportunity</a></h5>
          <p>Can their wherein own upon female without saying made in second them male own you. Him fill good last
            seasons hath moved and</p>
          <a href="#" class="read-more">Read More</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Feature section end -->

<!-- Work section start -->
<section class="work bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-9 m-auto text-center">
        <div class="sec-heading">
          <span class="tagline">Work process</span>
          <h3 class="sec-title">We Work Best When We Work Together</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="card mb-5 mb-lg-0">
          <div class="process">
            <h3>For Student</h3>
            <ul>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/1.png" alt="">
                    </span>
                <h5><a href="#">Free Registration</a></h5>
                <p>Their over fly creature first fish fruitful fourth our very thing said man our land</p>
              </li>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/2.png" alt="">
                    </span>
                <h5><a href="#">Find Your Tutor</a></h5>
                <p>Their over fly creature first fish fruitful fourth our very thing said man our land</p>
              </li>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/3.png" alt="">
                    </span>
                <h5><a href="#">Schedule A Lesson</a></h5>
                <p>Their over fly creature first fish fruitful fourth our very thing said man our land</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="card">
          <div class="process">
            <h3>For Tutor</h3>
            <ul>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/4.png" alt="">
                    </span>
                <h5><a href="#">Free Registration</a></h5>
                <p>Their over fly creature first fish fruitful fourth our very thing said man our land</p>
              </li>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/5.png" alt="">
                    </span>
                <h5><a href="#">Create Tutor Profile</a></h5>
                <p>Lorem ipsum dolor sit amet, consectetur adiising elit, sed do eiusmod tempor incididunt.</p>
              </li>
              <li>
                    <span class="icon-bg">
                      <img class="icon" src="images/icons/process/6.png" alt="">
                    </span>
                <h5><a href="#">Schedule A Lesson</a></h5>
                <p>Torem ipsum dolor sit amet, consectetur adiising elit, sed do eiusmod tempor incididunt.</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Work section end -->

<!-- Tutor section start -->
<section class="tutor">
  <div class="container">
    <div class="row align-items-center mb-5">
      <div class="col-md">
        <h3>Find The<br> Right Tutor Here</h3>
      </div>
      <div class="col-md">
        <form class="subject-searchform ml-md-auto">
          <input type="text" placeholder="Search your subject">
          <button type="submit"><i class="ti-search"></i></button>
        </form>
      </div>
    </div>
    <div class="row">
      <div class="col-md-7">
        <div class="tutor-info">
          <div class="video-box">
            <img src="images/video-bg.jpg" alt="">
            <a href="#" class="video-btn"><img src="images/youtube.png" alt=""></a>
          </div>
          <div class="infoBox">
            <div class="details">
              <img src="images/avatar-small.png" alt="" class="avatar-small circle">
              <h4>Lisa Sordan</h4>
              <span class="skills">English, Communication, Social</span>
              <div class="ratings">
                <a href="#"><i class="ti-star"></i>
                </a><a href="#"><i class="ti-star"></i>
              </a><a href="#"><i class="ti-star"></i>
              </a><a href="#"><i class="ti-star"></i>
              </a><a href="#"><i class="ti-star"></i>
              </a>
                <span>70,250 view</span>
              </div>
            </div>
            <div class="hire">
              <p><strong>$15</strong> USD/Hr</p>
              <a href="#" class="btn btn-filled">Hire Now</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-5">
        <div class="tutor-list bg-light">
          <ul>
            <li>
              <a href="#">
                <img src="images/lectures/1.jpg" alt="">
                <h5>David Kymen</h5>
                <span class="skills">English, Communication, Social</span>
                <span class="lectures">5 lectures</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/lectures/2.jpg" alt="">
                <h5>Jessi Green</h5>
                <span class="skills">Communication, Social, Marketing</span>
                <span class="lectures">5 lectures</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/lectures/3.jpg" alt="">
                <h5>Adam wood</h5>
                <span class="skills">Spanish, sociology</span>
                <span class="lectures">5 lectures</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/lectures/4.jpg" alt="">
                <h5>Cristofer Bin</h5>
                <span class="skills">javascript, networking, english</span>
                <span class="lectures">5 lectures</span>
              </a>
            </li>
            <li>
              <a href="#">
                <img src="images/lectures/1.jpg" alt="">
                <h5>Lia Hook</h5>
                <span class="skills">Physics, Biology, Social</span>
                <span class="lectures">5 lectures</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Tutor section end -->

<!-- Call to action section start -->
<section class="callto-action">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-md-8">
        <h3>Want To Become a Tutor</h3>
        <p>Success And Spirit In Our School</p>
      </div>
      <div class="col-md-4 text-md-right">
        <a href="" class="btn btn-default">Register Now</a>
      </div>
    </div>
  </div>
</section>
<!-- Call to action section end -->

<!-- Nearby students section start -->
<section class="nearby-students">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-9 m-auto text-center">
        <div class="sec-heading">
          <span class="tagline">find student</span>
          <h3 class="sec-title">We Work Best When We Work Together</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4">
        <div class="student-search-form">
          <h3>Match Student</h3>
          <form action="#">
            <input type="text" placeholder="Enter Student Location">
            <input type="text" placeholder="Enter Subject">
            <input type="text" placeholder="Enter Zipcode">
            <button type="submit" class="btn btn-filled">Invite students</button>
          </form>
        </div>
      </div>
      <div class="col-lg-8">
        <div id="map">
          <img src="images/map.jpg" alt="">
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Nearby tutors section end -->

<!-- Blog section start -->
<section class="blog bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-7 col-md-9 m-auto text-center">
        <div class="sec-heading">
          <span class="tagline">What’s new</span>
          <h3 class="sec-title">Every Single Update From <br>Our Blog Page</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4 col-md-6">
        <div class="post-item">
          <img src="images/post/1.jpg" alt="">
          <div class="post-content">
            <div class="meta-tags">
              <a href="#" class="post-meta category">creative
              </a> | <a href="#" class="post-meta date">07 July, 2019</a>
            </div>
            <h3 class="post-title"><a href="#">Own may face grass dot
              subdue brought</a></h3>
            <div class="meta-tags">
              <a href="#" class="post-meta category"><i class="ti-package"></i>Women Fashion</a><a href="#"
                                                                                                   class="post-meta commentCount"><i
                    class="ti-comments"></i>2 Comments</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="post-item">
          <img src="images/post/2.jpg" alt="">
          <div class="post-content">
            <div class="meta-tags">
              <a href="#" class="post-meta category">technology
              </a> | <a href="#" class="post-meta date">07 June, 2019</a>
            </div>
            <h3 class="post-title"><a href="#">Dolores quis commodi ratione fugit optio</a></h3>
            <div class="meta-tags">
              <a href="#" class="post-meta category"><i class="ti-package"></i>creative</a><a href="#"
                                                                                              class="post-meta commentCount"><i
                    class="ti-comments"></i>2 Comments</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="post-item">
          <img src="images/post/3.jpg" alt="">
          <div class="post-content">
            <div class="meta-tags">
              <a href="#" class="post-meta category">Marketing
              </a> | <a href="#" class="post-meta date">13 Feb, 2019</a>
            </div>
            <h3 class="post-title"><a href="#">Repellat delectus maiores accusantium</a></h3>
            <div class="meta-tags">
              <a href="#" class="post-meta category"><i class="ti-package"></i>Women Fashion</a>
              <a href="#" class="post-meta commentCount"><i class="ti-comments"></i>2 Comments</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Blog section end -->

<!-- Contact section start -->
<section class="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-7 col-md-9 m-auto text-center">
        <div class="sec-heading">
          <span class="tagline">Contact us</span>
          <h3 class="sec-title">If You Have Any Query, <br>Pls Ask Me</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-10 m-auto">
        <form action="home-01.html">
          <div class="row">
            <div class="form-group col-sm-6">
              <label for="f_name">Full name</label>
              <input type="text" class="form-control" id="f_name" placeholder="Full Name" required>
            </div>
            <div class="form-group col-sm-6">
              <label for="l_name">Full name</label>
              <input type="text" class="form-control" id="l_name" placeholder="Last name">
            </div>
            <div class="form-group col-sm-6">
              <label for="email">email</label>
              <input type="email" class="form-control" id="email" placeholder="Email address" required>
            </div>
            <div class="form-group col-sm-6">
              <label for="phone">Phone number</label>
              <input type="text" class="form-control" id="phone" placeholder="Phone number">
            </div>
          </div>
          <div class="form-group">
            <label for="message">Your Message</label>
            <textarea name="message" class="form-control" id="message" placeholder="Your Message"
                      required=""></textarea>
          </div>
          <button type="submit" class="btn btn-default">send message</button>
        </form>
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
              <li><a href="#">University images</a></li>
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
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxYLtelXg0PGjeTiFDtlN7nrH_47buDWo"></script>
<script src="js/scripts.js"></script>
</body>
</html>