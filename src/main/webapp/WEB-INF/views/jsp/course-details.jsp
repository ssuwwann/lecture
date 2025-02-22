<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon icons -->
    <link href="${pageContext.request.contextPath}/resources/images/favicon.png"
          rel="shortcut icon">

    <!-- All CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

    <title>Elearning - Tutor, Education HTML Template</title>
</head>
<body>

<!-- Preloader -->
<div id="preloader">
    <div id="status"></div>
</div>

<!-- Header strat -->
<c:import url="${pageContext.request.contextPath}/resources/common/jsp/header.jsp"/>
<!-- Header strat -->

<!-- Page feature start -->
<section class="page-feature">
    <div class="container text-center">
        <h2>Course details</h2>
        <div class="breadcrumb">
            <a href="home.html">Home</a>
            <span>/ Course details</span>
        </div>
    </div>
</section>
<!-- Page feature end -->

<!-- Course Details section start -->
<section class="course-details">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="course-preview">
                    <img src="${pageContext.request.contextPath}/resources/images/course-preview.jpg"
                         alt="">
                    <a href="#" class="preview-btn"><i class="ti-control-play"></i></a>
                </div>
                <div class="course-content">
                    <h3>HTML5 for beginners <span class="badge"><i
                            class="ti-tag"></i>Hot & new</span></h3>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius, quae soluta.
                        Praesentium consequatur odio
                        recusandae nostrum pariatur unde</p>
                    <div class="details">
                        <span>By <a href="#">Von wick</a></span>
                        <span>Last update 10 Sep. 2019</span>
                        <div class="ratings">
                            <span>39 Reviews</span>
                            <a href="#"><i class="ti-star"></i>
                            </a><a href="#"><i class="ti-star"></i>
                        </a><a href="#"><i class="ti-star"></i>
                        </a><a href="#"><i class="ti-star"></i>
                        </a><a href="#"><i class="ti-star"></i>
                        </a>
                        </div>
                    </div>
                </div>

                <div class="course-curriculum">
                    <ul class="nav nav-tabs">
                        <li><a class="active" data-toggle="tab" href="#overview">Overview</a></li>
                        <li><a data-toggle="tab" href="#curriculum">Curriculum</a></li>
                        <li><a data-toggle="tab" href="#courseObj">Course Objective</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="overview" class="tab-pane fade in show active">
                            <h4 class="tab-title">This course includes</h4>
                            <ul class="tab-list-2col mb-4">
                                <li><i class="ti-video-camera"></i>48.5 hours on-demand video</li>
                                <li><i class="ti-pencil"></i>57 articles</li>
                                <li><i class="ti-download"></i>12 downloadable resources</li>
                                <li><i class="ti-timer"></i>Full lifetime access</li>
                                <li><i class="ti-tablet"></i>Access on mobile and TV</li>
                                <li><i class="ti-medall"></i>Certificate of Completion</li>
                            </ul>

                            <h4 class="tab-title">Description</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt
                                esse architecto delectus at facere
                                maxime totam dolorem eum eligendi ullam laudantium officia
                                temporibus repellat nostrum neque, debitis
                                atque sint impedit nemo ipsum! Adipisci dolores ducimus numquam ad
                                cumque possimus? Ex.</p>

                            <h4 class="tab-title">Requirements for this course</h4>
                            <ul>
                                <li><i class="ti-hand-point-right"></i>Phasellus sit amet velit
                                    auctor turpis rhoncus.
                                </li>
                                <li><i class="ti-hand-point-right"></i>Phasellus sed dolor sodales,
                                    eleifend ipsum eu.
                                </li>
                                <li><i class="ti-hand-point-right"></i>Nullam id dolor in ex
                                    eleifend tempus.
                                </li>
                                <li><i class="ti-hand-point-right"></i>Etiam id lorem vel neque
                                    faucibus fermentum.
                                </li>
                                <li><i class="ti-hand-point-right"></i>Nunc tincidunt augue in enim
                                    sollicitudin feugiat.
                                </li>

                            </ul>
                        </div>
                        <div id="curriculum" class="tab-pane fade">
                            <div class="accordion" id="accordion">
                                <div class="accordion-item active">
                                    <h5 class="" data-toggle="collapse" data-target="#acpan1"
                                        aria-expanded="true">
                                        Introduction to basic HTML
                                        <span>08 lectures</span>
                                    </h5>
                                    <div id="acpan1" class="collapse show" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Nested
                                                    HTML Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Attributes</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Headings
                                                    Are Important</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Don't
                                                    Forget the End Tag</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>The
                                                    Poem Problem</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Formatting Elements</a></li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h5 class="collapsed" data-toggle="collapse"
                                        data-target="#acpan2" aria-expanded="false">
                                        Introduction to HTML5
                                        <span>06 lectures</span>
                                    </h5>

                                    <div id="acpan2" class="collapse" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Nested
                                                    HTML Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Attributes</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Headings
                                                    Are Important</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Don't
                                                    Forget the End Tag</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>The
                                                    Poem Problem</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Formatting Elements</a></li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h5 class="collapsed" data-toggle="collapse"
                                        data-target="#acpan3" aria-expanded="false">
                                        HTML5 features
                                        <span>08 lectures</span>
                                    </h5>

                                    <div id="acpan3" class="collapse" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Nested
                                                    HTML Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Attributes</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Headings
                                                    Are Important</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Don't
                                                    Forget the End Tag</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>The
                                                    Poem Problem</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Formatting Elements</a></li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h5 class="collapsed" data-toggle="collapse"
                                        data-target="#acpan4" aria-expanded="false">
                                        HTML5 Advance features
                                        <span>07 lectures</span>
                                    </h5>

                                    <div id="acpan4" class="collapse" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Nested
                                                    HTML Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Headings
                                                    Are Important</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Don't
                                                    Forget the End Tag</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>The
                                                    Poem Problem</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Formatting Elements</a></li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h5 class="collapsed" data-toggle="collapse"
                                        data-target="#acpan5" aria-expanded="false">
                                        Build a Project in HTML 5
                                        <span>06 lectures</span>
                                    </h5>

                                    <div id="acpan5" class="collapse" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Nested
                                                    HTML Elements</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>HTML
                                                    Attributes</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Headings
                                                    Are Important</a></li>
                                                <li><a href="#"><i class="ti-control-play"></i>Don't
                                                    Forget the End Tag</a></li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h5 class="collapsed" data-toggle="collapse"
                                        data-target="#acpan6" aria-expanded="false">
                                        Summary
                                        <span>02 lectures</span>
                                    </h5>

                                    <div id="acpan6" class="collapse" data-parent="#accordion">
                                        <div class="acr-body">
                                            <ul>
                                                <li><a href="#"><i class="ti-control-play"></i>Conclusion</a>
                                                </li>
                                                <li><a href="#"><i class="ti-zip"></i>Source
                                                    code</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="courseObj" class="tab-pane fade">
                            <h3>You will learn form this course</h3>
                            <ul>
                                <li><i class="ti-hand-point-right"></i>HTML is the standard markup
                                    language for creating Web pages.
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML stands for Hyper Text
                                    Markup Language
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML describes the structure
                                    of a Web page
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML consists of a series of
                                    elements
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML elements tell the
                                    browser how to display the content
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML elements are represented
                                    by tags
                                </li>
                                <li><i class="ti-hand-point-right"></i>HTML tags label pieces of
                                    content such as "heading", "paragraph",
                                    "table", and so on
                                </li>
                                <li><i class="ti-hand-point-right"></i>Browsers do not display the
                                    HTML tags, but use them to render the
                                    content of the page
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="comments">
                    <h4 class="comment-title">comments</h4>
                    <ul>
                        <li>
                            <div class="single-comment">
                                <div class="user-thumb">
                                    <img class="avatar-small circle"
                                         src="${pageContext.request.contextPath}/resources/images/avatar-small.png"
                                         alt="">
                                </div>
                                <div class="comments-body">
                                    <h4>Kosmi Kotalia</h4>
                                    <p>There are many variations of passages of Lorem Ipsum
                                        available, but the majority have suffered
                                        alteration in some form, by injected humour, or randomised
                                        words which.</p>
                                    <a href="#"><i class="ti-back-right"></i>Reply</a>
                                </div>
                            </div>
                            <ul class="cmnt-level-2">
                                <li>
                                    <div class="single-comment">
                                        <div class="user-thumb">
                                            <img class="avatar-small circle"
                                                 src="${pageContext.request.contextPath}/resources/images/avatar-small.png"
                                                 alt="">
                                        </div>
                                        <div class="comments-body">
                                            <h4>Adam wood</h4>
                                            <p>Lorem ipsum, dolor sit amet consectetur adipisicing
                                                elit. Maxime ratione libero temporibus quo
                                                id iste, esse at accusamus atque qui.</p>
                                            <a href="#"><i class="ti-back-right"></i>Reply</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="single-comment">
                                <div class="user-thumb">
                                    <img class="avatar-small circle"
                                         src="${pageContext.request.contextPath}/resources/images/avatar-small.png"
                                         alt="">
                                </div>
                                <div class="comments-body">
                                    <h4>Lina handshake</h4>
                                    <p>Asperiores minus, laborum incidunt explicabo dolore officiis
                                        praesentium veniam expedita libero
                                        harum pariatur reiciendis porro debitis aliquam quas labore
                                        ducimus nisi. Blanditiis?</p>
                                    <a href="#"><i class="ti-back-right"></i>Reply</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="comment-form">
                    <h4 class="comment-title">Leave a comment</h4>
                    <form action="#">
                        <textarea placeholder="Write Comments"></textarea>
                        <button class="btn btn-filled btn-round ml-auto"><span class="bh"></span>
                            <span>Submit</span></button>
                    </form>
                </div>

            </div>
            <div class="col-lg-4">
                <aside class="sidebar">
                    <div class="widget buy-course">
                        <p class="price"><strong>$11.39</strong><span>$111.00</span></p>
                        <span class="discount-price"><i
                                class="ti-timer"></i>90% off for 23 hours</span>
                        <a href="#" class="btn btn-outline mb-3">Add to cart</a>
                        <a href="#" class="btn btn-filled">Buy now</a>
                    </div>
                    <div class="widget instractors">
                        <figure>
                            <img src="${pageContext.request.contextPath}/resources/images/avatar-small.png"
                                 alt=""
                                 class="avatar-md circle">
                        </figure>
                        <h4>Lisa Sordan</h4>
                        <span>Web designer</span>
                        <!-- <span class="total-courses"><i class="ti-user"></i> 09 Courses</span> -->
                        <div class="socials">
                            <a href="#" class="facebook"><i class="ti-facebook"></i></a>
                            <a href="#" class="twitter"><i class="ti-twitter-alt"></i></a>
                            <a href="#" class="linkedin"><i class="ti-linkedin"></i></a>
                            <a href="#" class="youtube"><i class="ti-youtube"></i></a>
                        </div>
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
                        <h3 class="widget-title">recent Courses</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/images/lectures/3.jpg"
                                         alt="">
                                    <h5>David Kymen</h5>
                                    <span class="skills">English, Communication, Social</span>
                                    <span class="lectures">5 lectures</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/images/lectures/4.jpg"
                                         alt="">
                                    <h5>Jessi Green</h5>
                                    <span class="skills">Communication, Social, Marketing</span>
                                    <span class="lectures">5 lectures</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/images/lectures/1.jpg"
                                         alt="">
                                    <h5>Adam wood</h5>
                                    <span class="skills">Spanish, sociology</span>
                                    <span class="lectures">5 lectures</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!-- Courses Details section end -->

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
                            <li><a href="#">University ${pageContext.request.contextPath}/resources/images</a>
                            </li>
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
            <p class="copyright">Copyright © 2019 <a href="#">themeies.com</a>. All rights reserved.
            </p>
        </div>
    </div>

</footer>
<!-- Footer end -->

<!-- JS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>