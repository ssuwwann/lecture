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

<c:import url="${pageContext.request.contextPath}/resources/common/jsp/header.jsp"/>

<!-- Page feature start -->
<section class="page-feature">
  <div class="container text-center">
    <h2>Blog</h2>
    <div class="breadcrumb">
      <a href="home.html">Home</a>
      <span>/ Blog</span>
    </div>
  </div>
</section>
<!-- Page feature end -->

<!-- Blog Posts section start -->
<section class="blog-posts">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <div class="row">
          <div class="col-md-6">
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
          <div class="col-md-6">
            <div class="post-item">
              <img src="images/post/2.jpg" alt="">
              <div class="post-content">
                <div class="meta-tags">
                  <a href="#" class="post-meta category">Marketing
                  </a> | <a href="#" class="post-meta date">11 June, 2019</a>
                </div>
                <h3 class="post-title"><a href="#">Suscipit esse corrupti deleniti dolorem</a></h3>
                <div class="meta-tags">
                  <a href="#" class="post-meta category"><i class="ti-package"></i>Clothing</a><a href="#"
                                                                                                  class="post-meta commentCount"><i
                        class="ti-comments"></i>4 Comments</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="post-item">
              <img src="images/post/3.jpg" alt="">
              <div class="post-content">
                <div class="meta-tags">
                  <a href="#" class="post-meta category">Technology
                  </a> | <a href="#" class="post-meta date">18 July, 2019</a>
                </div>
                <h3 class="post-title"><a href="#">Temporibus quia blanditiis voluptatem</a></h3>
                <div class="meta-tags">
                  <a href="#" class="post-meta category"><i class="ti-package"></i>accessories</a>
                  <a href="#" class="post-meta commentCount"><i class="ti-comments"></i>2 Comments</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="post-item">
              <img src="images/post/1.jpg" alt="">
              <div class="post-content">
                <div class="meta-tags">
                  <a href="#" class="post-meta category">Communication
                  </a> | <a href="#" class="post-meta date">02 August, 2019</a>
                </div>
                <h3 class="post-title"><a href="#">Quam deserunt ipsam tempora perferendis</a></h3>
                <div class="meta-tags">
                  <a href="#" class="post-meta category"><i class="ti-package"></i>Wearing</a>
                  <a href="#" class="post-meta commentCount"><i class="ti-comments"></i>4 Comments</a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col">
            <div class="pagination">
              <!-- <a href="$">prev</a> -->
              <span class="current-page">1</span>
              <a href="$">2</a>
              <a href="$">3</a>
              <a href="$">4</a>
              <a href="$">Next</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <aside class="sidebar">
          <div class="widget widget_search">
            <form action="#">
              <input type="text" name="s" placeholder="Search ..." required="">
              <i class="ti-search"></i>
            </form>
          </div>
          <div class="widget categories">
            <h3 class="widget-title">Categories</h3>
            <ul>
              <li><a href="#">App Design <span>(5)</span></a></li>
              <li><a href="#">Web Design <span>(9)</span></a></li>
              <li><a href="#">UI-UX Design <span>(23)</span></a></li>
              <li><a href="#">Print Design <span>(7)</span></a></li>
              <li><a href="#">Game Design <span>(3)</span></a></li>
              <li><a href="#">Graphic Design <span>(2)</span></a></li>
              <li><a href="#">Logo Design <span>(5)</span></a></li>
            </ul>
          </div>
          <div class="widget recent-courses">
            <h3 class="widget-title">recent posts</h3>
            <ul>
              <li>
                <a href="#">
                  <img src="images/post/3.jpg" alt="">
                  <h5>Lorem ipsum dolor sit amet.</h5>
                  <div class="meta-tags">
                          <span class="post-meta category">creative
                          </span> | <span class="post-meta date">07 July, 2019</span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <img src="images/post/2.jpg" alt="">
                  <h5>Amet consectetur adipisicing elit.</h5>
                  <div class="meta-tags">
                          <span class="post-meta category">creative
                          </span> | <span class="post-meta date">07 July, 2019</span>
                  </div>
                </a>
              </li>
              <li>
                <a href="#">
                  <img src="images/post/1.jpg" alt="">
                  <h5>Eos voluptatem harum aut?</h5>
                  <div class="meta-tags">
                          <span class="post-meta category">creative
                          </span> | <span class="post-meta date">07 July, 2019</span>
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </aside>
      </div>
    </div>
  </div>
</section>
<!-- Blog Posts section end -->

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
<script src="js/scripts.js"></script>
</body>
</html>