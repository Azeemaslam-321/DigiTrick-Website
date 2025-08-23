<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="main">

        <!-- Hero Section -->
        <section id="hero" class="hero section">

            <img src="assets/img/hero-bg.jpg" alt="Hero Background" data-aos="fade-in">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h2 data-aos="fade-up" data-aos-delay="100">Transform Your Business with Smarter Digital Solutions</h2>
                        <p data-aos="fade-up" data-aos-delay="200">
                            We are a team of professionals delivering modern, responsive, and user-friendly websites 
                    to help businesses grow online.
                        </p>
                        <div class="d-flex mt-4" data-aos="fade-up" data-aos-delay="300">
                            <a href="#about" class="btn-get-started">Get Started</a>
                           <%-- <a href="https://www.youtube.com/watch?v=Y7f98aduVJ8"
                                class="glightbox btn-watch-video d-flex align-items-center">
                                <i class="bi bi-play-circle"></i><span>Watch Video</span>
                            </a>--%>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /Hero Section -->

        <!-- /Hero Section -->

        <!-- Clients Section -->
        <section id="clients" class="clients section">

            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="swiper init-swiper">
                    <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              },
              "breakpoints": {
                "320": {
                  "slidesPerView": 2,
                  "spaceBetween": 40
                },
                "480": {
                  "slidesPerView": 3,
                  "spaceBetween": 60
                },
                "640": {
                  "slidesPerView": 4,
                  "spaceBetween": 80
                },
                "992": {
                  "slidesPerView": 6,
                  "spaceBetween": 120
                }
              }
            }
                    </script>
                    <div class="swiper-wrapper align-items-center">
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-7.png" class="img-fluid" alt="">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/img/clients/client-8.png" class="img-fluid" alt="">
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>

        </section>
        <!-- About Section -->
        <section id="about" class="about section section-bg dark-background">

            <div class="container position-relative">

                <div class="row gy-5">

                    <!-- About Content -->
                    <div class="content col-xl-5 d-flex flex-column" data-aos="fade-up" data-aos-delay="100">
                        <h3>About Our Company</h3>
                        <p>
                            We are a passionate team dedicated to providing high-quality IT solutions and services. 
                    Our goal is to help businesses grow by using the latest technologies, creative ideas, 
                    and professional expertise. With years of experience, we focus on delivering reliable 
                    and result-oriented solutions for our clients.
                        </p>
                        <a href="#services" class="about-btn align-self-center align-self-xl-start">
                            <span>Learn More</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                    <!-- End About Content -->

                    <!-- About Features -->
                    <div class="col-xl-7" data-aos="fade-up" data-aos-delay="200">
                        <div class="row gy-4">

                            <div class="col-md-6 icon-box position-relative">
                                <i class="bi bi-briefcase"></i>
                                <h4><a href="#" class="stretched-link">Professional Experience</a></h4>
                                <p>We bring years of industry knowledge to deliver effective business solutions.</p>
                            </div>

                            <div class="col-md-6 icon-box position-relative">
                                <i class="bi bi-gem"></i>
                                <h4><a href="#" class="stretched-link">Quality Solutions</a></h4>
                                <p>Our team ensures every project meets high-quality standards and client expectations.</p>
                            </div>

                            <div class="col-md-6 icon-box position-relative">
                                <i class="bi bi-broadcast"></i>
                                <h4><a href="#" class="stretched-link">Global Reach</a></h4>
                                <p>We provide services to clients worldwide, helping businesses go digital.</p>
                            </div>

                            <div class="col-md-6 icon-box position-relative">
                                <i class="bi bi-easel"></i>
                                <h4><a href="#" class="stretched-link">Creative Approach</a></h4>
                                <p>Our innovative strategies and designs make businesses stand out in the market.</p>
                            </div>

                        </div>
                    </div>
                    <!-- End About Features -->

                </div>

            </div>

        </section>
        <!-- /About Section -->


        <!-- Stats Section -->
        <section id="stats" class="stats section">

            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row gy-4">

                    <div class="col-lg-3 col-md-6 d-flex flex-column align-items-center">
                        <i class="bi bi-emoji-smile"></i>
                        <div class="stats-item">
                            <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Happy Clients</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6 d-flex flex-column align-items-center">
                        <i class="bi bi-journal-richtext"></i>
                        <div class="stats-item">
                            <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Projects</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6 d-flex flex-column align-items-center">
                        <i class="bi bi-headset"></i>
                        <div class="stats-item">
                            <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Hours Of Support</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                    <div class="col-lg-3 col-md-6 d-flex flex-column align-items-center">
                        <i class="bi bi-people"></i>
                        <div class="stats-item">
                            <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
                            <p>Hard Workers</p>
                        </div>
                    </div>
                    <!-- End Stats Item -->

                </div>

            </div>

        </section>
        <!-- /Stats Section -->

        <%-- <!-- Tabs Section -->
        <section id="tabs" class="tabs section">

            <div class="container">

                <ul class="nav nav-tabs row  d-flex" data-aos="fade-up" data-aos-delay="100">
                    <li class="nav-item col-3">
                        <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tabs-tab-1">
                            <i class="bi bi-binoculars"></i>
                            <h4 class="d-none d-lg-block">Modi sit est dela pireda nest</h4>
                        </a>
                    </li>
                    <li class="nav-item col-3">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tabs-tab-2">
                            <i class="bi bi-box-seam"></i>
                            <h4 class="d-none d-lg-block">Unde praesenti mara setra le</h4>
                        </a>
                    </li>
                    <li class="nav-item col-3">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tabs-tab-3">
                            <i class="bi bi-brightness-high"></i>
                            <h4 class="d-none d-lg-block">Pariatur explica nitro dela</h4>
                        </a>
                    </li>
                    <li class="nav-item col-3">
                        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tabs-tab-4">
                            <i class="bi bi-command"></i>
                            <h4 class="d-none d-lg-block">Nostrum qui dile node</h4>
                        </a>
                    </li>
                </ul>
                <!-- End Tab Nav -->

                <div class="tab-content" data-aos="fade-up" data-aos-delay="200">

                    <div class="tab-pane fade active show" id="tabs-tab-1">
                        <div class="row">
                            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                                <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
                                <p class="fst-italic">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                                </p>
                                <ul>
                                    <li><i class="bi bi-check2-all"></i>
                                        <spab>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</spab>
                                    </li>
                                    <li><i class="bi bi-check2-all"></i><span>Duis aute irure dolor in reprehenderit in voluptate velit</span>.</li>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</span></li>
                                </ul>
                                <p>
                                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                  culpa qui officia deserunt mollit anim id est laborum
                                </p>
                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 text-center">
                                <img src="assets/img/working-1.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <!-- End Tab Content Item -->

                    <div class="tab-pane fade" id="tabs-tab-2">
                        <div class="row">
                            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                                <h3>Neque exercitationem debitis soluta quos debitis quo mollitia officia est</h3>
                                <p>
                                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                  culpa qui officia deserunt mollit anim id est laborum
                                </p>
                                <p class="fst-italic">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                                </p>
                                <ul>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</span></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 text-center">
                                <img src="assets/img/working-2.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <!-- End Tab Content Item -->

                    <div class="tab-pane fade" id="tabs-tab-3">
                        <div class="row">
                            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                                <h3>Voluptatibus commodi ut accusamus ea repudiandae ut autem dolor ut assumenda</h3>
                                <p>
                                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                  culpa qui officia deserunt mollit anim id est laborum
                                </p>
                                <ul>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.</span></li>
                                </ul>
                                <p class="fst-italic">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                                </p>
                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 text-center">
                                <img src="assets/img/working-3.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <!-- End Tab Content Item -->

                    <div class="tab-pane fade" id="tabs-tab-4">
                        <div class="row">
                            <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                                <h3>Omnis fugiat ea explicabo sunt dolorum asperiores sequi inventore rerum</h3>
                                <p>
                                    Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                  culpa qui officia deserunt mollit anim id est laborum
                                </p>
                                <p class="fst-italic">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                                </p>
                                <ul>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                                    <li><i class="bi bi-check2-all"></i><span>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</span></li>
                                </ul>
                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 text-center">
                                <img src="assets/img/working-4.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <!-- End Tab Content Item -->

                </div>

            </div>

        </section>
        <!-- /Tabs Section -->--%>
      <section id="tabs" class="tabs section">

  <div class="container section-title" data-aos="fade-up">
    <h2>Why Choose Us</h2>
    <p>We provide end-to-end IT solutions tailored to your business needs.</p>
  </div>

  <div class="container" data-aos="fade-up" data-aos-delay="100">

    <ul class="nav nav-tabs row d-flex">
      <li class="nav-item col-3">
        <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
          <i class="bi bi-flag"></i>
          <h4 class="d-none d-lg-block">Our Mission</h4>
        </a>
      </li>
      <li class="nav-item col-3">
        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-2">
          <i class="bi bi-gear"></i>
          <h4 class="d-none d-lg-block">Services</h4>
        </a>
      </li>
      <li class="nav-item col-3">
        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
          <i class="bi bi-diagram-3"></i>
          <h4 class="d-none d-lg-block">Our Process</h4>
        </a>
      </li>
      <li class="nav-item col-3">
        <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-4">
          <i class="bi bi-heart"></i>
          <h4 class="d-none d-lg-block">Our Values</h4>
        </a>
      </li>
    </ul>

    <div class="tab-content">

      <!-- Tab 1 -->
      <div class="tab-pane active show" id="tab-1">
        <div class="row gy-4">
          <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="100">
            <h3>Driving Innovation with Purpose</h3>
            <p class="fst-italic">
              Our mission is to help businesses grow using modern, scalable, and affordable IT solutions.
            </p>
            <ul>
              <li><i class="bi bi-check-circle-fill"></i> Delivering innovative solutions.</li>
              <li><i class="bi bi-check-circle-fill"></i> Building long-term client relationships.</li>
              <li><i class="bi bi-check-circle-fill"></i> Empowering businesses with technology.</li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
<img
  src="assets/img/services.jpg"
  alt="Team collaborating on strategy"
  class="img-fluid rounded shadow"
  style="max-height:350px; object-fit:cover; width:100%;"
  loading="lazy"
  referrerpolicy="no-referrer"
/>


          </div>
        </div>
      </div>
      <!-- End Tab 1 -->

      <!-- Tab 2 -->
      <div class="tab-pane" id="tab-2">
        <div class="row gy-4">
          <div class="col-lg-6 order-2 order-lg-1">
            <h3>Our Core Services</h3>
            <p class="fst-italic">
              We specialize in a wide range of IT solutions tailored for startups, SMEs, and enterprises.
            </p>
            <ul>
              <li><i class="bi bi-check-circle-fill"></i> Web & Mobile App Development</li>
              <li><i class="bi bi-check-circle-fill"></i> Cloud & DevOps Solutions</li>
              <li><i class="bi bi-check-circle-fill"></i> Digital Marketing & SEO</li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?auto=format&fit=crop&w=800&q=80" 
                 alt="Our Services" class="img-fluid rounded shadow"
                 style="max-height: 350px; object-fit: cover; width: 100%;">
          </div>
        </div>
      </div>
      <!-- End Tab 2 -->

      <!-- Tab 3 -->
      <div class="tab-pane" id="tab-3">
        <div class="row gy-4">
          <div class="col-lg-6 order-2 order-lg-1">
            <h3>Our Process</h3>
            <p class="fst-italic">
              We follow a structured process that ensures quality, transparency, and timely delivery.
            </p>
            <ul>
              <li><i class="bi bi-check-circle-fill"></i> Requirement Analysis & Planning</li>
              <li><i class="bi bi-check-circle-fill"></i> Agile Development & Testing</li>
              <li><i class="bi bi-check-circle-fill"></i> Deployment & Ongoing Support</li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="https://images.unsplash.com/photo-1521737604893-d14cc237f11d?auto=format&fit=crop&w=800&q=80" 
                 alt="Our Process" class="img-fluid rounded shadow"
                 style="max-height: 350px; object-fit: cover; width: 100%;">
          </div>
        </div>
      </div>
      <!-- End Tab 3 -->

      <!-- Tab 4 -->
      <div class="tab-pane" id="tab-4">
        <div class="row gy-4">
          <div class="col-lg-6 order-2 order-lg-1">
            <h3>Our Core Values</h3>
            <p class="fst-italic">
              We believe in strong ethics, customer-first approach, and continuous innovation.
            </p>
            <ul>
              <li><i class="bi bi-check-circle-fill"></i> Integrity in everything we do.</li>
              <li><i class="bi bi-check-circle-fill"></i> Commitment to customer success.</li>
              <li><i class="bi bi-check-circle-fill"></i> Innovation & excellence.</li>
            </ul>
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center">
            <img src="https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80" 
                 alt="Our Values" class="img-fluid rounded shadow"
                 style="max-height: 350px; object-fit: cover; width: 100%;">
          </div>
        </div>
      </div>
      <!-- End Tab 4 -->

    </div>

  </div>
</section>



      <!-- Services Section -->
<section id="services" class="services section section-bg dark-background">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
        <h2>Our Services</h2>
        <p>Digitrick Consultancy provides cutting-edge IT Training, Development, and Digital Solutions to empower students, professionals, and businesses in the digital era.</p>
    </div>
    <!-- End Section Title -->

    <div class="container">

        <div class="row gy-4">

            <!-- Web Development -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-laptop icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">Web Development</a></h4>
                        <p class="description">We design and build responsive, SEO-friendly, and secure websites tailored to your brand and business goals.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- Java Development -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-code-slash icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">Java Development</a></h4>
                        <p class="description">Robust enterprise applications using Java technologies, ensuring performance, scalability, and reliability.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- Python Solutions -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-terminal icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">Python Solutions</a></h4>
                        <p class="description">Custom Python development for automation, AI/ML models, web apps, and business solutions.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- Digital Marketing -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-bar-chart-line icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">Digital Marketing</a></h4>
                        <p class="description">Boost your online presence with SEO, Google Ads, Social Media Marketing, and result-driven campaigns.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- Cloud-Based Solutions -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="500">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-cloud-check icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">Cloud-Based Solutions</a></h4>
                        <p class="description">Secure, scalable, and cost-effective cloud computing services including AWS, Azure, and Google Cloud deployments.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- QA & Testing -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="600">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-bug icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">QA & Testing</a></h4>
                        <p class="description">Comprehensive software testing services to ensure high quality, performance, and bug-free applications.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- IT Training & Internship -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="700">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-mortarboard icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">IT Training & Internship</a></h4>
                        <p class="description">Hands-on training and internship programs in trending technologies like .NET, Java, Python, Cloud, and more.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

            <!-- IT Consulting -->
            <div class="col-md-6" data-aos="fade-up" data-aos-delay="800">
                <div class="service-item d-flex position-relative h-100">
                    <i class="bi bi-people icon flex-shrink-0"></i>
                    <div>
                        <h4 class="title"><a href="ServiceDetails.aspx" class="stretched-link">IT Consulting</a></h4>
                        <p class="description">Expert IT consulting to help startups and companies choose the right technology for growth and digital transformation.</p>
                    </div>
                </div>
            </div>
            <!-- End Service Item -->

        </div>

    </div>

</section>
<!-- /Services Section -->



        <!-- Portfolio Section -->
        <section id="portfolio" class="portfolio section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Portfolio</h2>
                <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

                    <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">App</li>
                        <li data-filter=".filter-product">Product</li>
                      <%--  <li data-filter=".filter-branding">Branding</li>
                        <li data-filter=".filter-books">Books</li>--%>
                    </ul>
                    <!-- End Portfolio Filters -->

                    <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/app-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 1</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/app-1.jpg" title="App 1" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/product-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Product 1</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/product-1.jpg" title="Product 1" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

<%--                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/branding-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Branding 1</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/branding-1.jpg" title="Branding 1" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-books">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/books-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Books 1</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/books-1.jpg" title="Branding 1" data-gallery="portfolio-gallery-book" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->--%>

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/app-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 2</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/app-2.jpg" title="App 2" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/product-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Product 2</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/product-2.jpg" title="Product 2" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/branding-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Branding 2</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/branding-2.jpg" title="Branding 2" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-books">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/books-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Books 2</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/books-2.jpg" title="Branding 2" data-gallery="portfolio-gallery-book" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/app-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 3</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/app-3.jpg" title="App 3" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-product">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/product-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Product 3</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/product-3.jpg" title="Product 3" data-gallery="portfolio-gallery-product" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-branding">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/branding-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Branding 3</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/branding-3.jpg" title="Branding 2" data-gallery="portfolio-gallery-branding" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-books">
                            <div class="portfolio-content h-100">
                                <img src="assets/img/portfolio/books-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Books 3</h4>
                                    <p>Lorem ipsum, dolor sit amet consectetur</p>
                                    <a href="assets/img/portfolio/books-3.jpg" title="Branding 3" data-gallery="portfolio-gallery-book" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                    <a href="PortfolioDetails.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                    </div>
                    <!-- End Portfolio Container -->

                </div>

            </div>

        </section>
        <!-- /Portfolio Section -->

   <!-- Testimonials Section -->
<section id="testimonials" class="testimonials section">

  <!-- Section Title -->
  <div class="container section-title text-center" data-aos="fade-up">
    <h2>Testimonials</h2>
    <p>What our clients are saying about us</p>
  </div>
  <!-- End Section Title -->

  <div class="container" data-aos="fade-up" data-aos-delay="100">
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">

        <!-- Testimonial 1 -->
        <div class="swiper-slide">
          <div class="testimonial-item text-center">
            <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img rounded-circle mb-3" alt="Photo of Rahul Mehta">
            <h3>Rahul Mehta</h3>
            <h4>CEO, BrightTech Solutions</h4>
            <div class="stars mb-2">
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
            </div>
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              DigiTrick Consultancy helped us streamline our development process. Their team was professional, responsive, and delivered exactly what we needed ahead of schedule.
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
          </div>
        </div>
        <!-- End testimonial item -->

        <!-- Testimonial 2 -->
        <div class="swiper-slide">
          <div class="testimonial-item text-center">
            <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img rounded-circle mb-3" alt="Photo of Ayesha Khan">
            <h3>Ayesha Khan</h3>
            <h4>Marketing Head, GreenLeaf Organics</h4>
            <div class="stars mb-2">
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
            </div>
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              We wanted a modern website with e-commerce integration and DigiTrick made it possible. The design is sleek, mobile-friendly, and our sales improved within weeks of launch.
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
          </div>
        </div>
        <!-- End testimonial item -->

        <!-- Testimonial 3 -->
        <div class="swiper-slide">
          <div class="testimonial-item text-center">
            <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img rounded-circle mb-3" alt="Photo of Vikram Singh">
            <h3>Vikram Singh</h3>
            <h4>Founder, EduSmart Academy</h4>
            <div class="stars mb-2">
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
              <i class="bi bi-star-fill"></i>
            </div>
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              Thanks to DigiTrick’s expertise, we were able to launch our e-learning platform smoothly. Their support team is always available and truly cares about our success.
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
          </div>
        </div>
        <!-- End testimonial item -->

      </div>
      <!-- Pagination -->
      <div class="swiper-pagination mt-3"></div>
    </div>
  </div>
</section>
<!-- /Testimonials Section -->


       <%-- <!-- Pricing Section -->
        <section id="pricing" class="pricing section section-bg dark-background">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Pricing</h2>
                <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="row g-4 g-lg-0">

                    <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="pricing-item">
                            <h3>Free Plan</h3>
                            <h4><sup>$</sup>0<span> / month</span></h4>
                            <ul>
                                <li><i class="bi bi-check"></i><span>Quam adipiscing vitae proin</span></li>
                                <li><i class="bi bi-check"></i><span>Nec feugiat nisl pretium</span></li>
                                <li><i class="bi bi-check"></i><span>Nulla at volutpat diam uteera</span></li>
                                <li class="na"><i class="bi bi-x"></i><span>Pharetra massa massa ultricies</span></li>
                                <li class="na"><i class="bi bi-x"></i><span>Massa ultricies mi quis hendrerit</span></li>
                            </ul>
                            <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                    <div class="col-lg-4 featured" data-aos="zoom-in" data-aos-delay="200">
                        <div class="pricing-item">
                            <h3>Business Plan</h3>
                            <h4><sup>$</sup>29<span> / month</span></h4>
                            <ul>
                                <li><i class="bi bi-check"></i><span>Quam adipiscing vitae proin</span></li>
                                <li><i class="bi bi-check"></i><span>Nec feugiat nisl pretium</span></li>
                                <li><i class="bi bi-check"></i><span>Nulla at volutpat diam uteera</span></li>
                                <li><i class="bi bi-check"></i><span>Pharetra massa massa ultricies</span></li>
                                <li><i class="bi bi-check"></i><span>Massa ultricies mi quis hendrerit</span></li>
                            </ul>
                            <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                    <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="100">
                        <div class="pricing-item">
                            <h3>Developer Plan</h3>
                            <h4><sup>$</sup>49<span> / month</span></h4>
                            <ul>
                                <li><i class="bi bi-check"></i><span>Quam adipiscing vitae proin</span></li>
                                <li><i class="bi bi-check"></i><span>Nec feugiat nisl pretium</span></li>
                                <li><i class="bi bi-check"></i><span>Nulla at volutpat diam uteera</span></li>
                                <li><i class="bi bi-check"></i><span>Pharetra massa massa ultricies</span></li>
                                <li><i class="bi bi-check"></i><span>Massa ultricies mi quis hendrerit</span></li>
                            </ul>
                            <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
                        </div>
                    </div>
                    <!-- End Pricing Item -->

                </div>

            </div>

        </section>
        <!-- /Pricing Section -->--%>

        <!-- Faq Section -->
        <section id="faq" class="faq section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Frequently Asked Questions</h2>
                <p>Here are some common questions about Digitrick Consultancy, our training programs, internships, and IT services.</p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="row justify-content-center">

                    <div class="col-lg-10" data-aos="fade-up" data-aos-delay="100">

                        <div class="faq-container">

                            <!-- Faq item -->
                            <div class="faq-item faq-active">
                                <h3>What services does Digitrick Consultancy provide?</h3>
                                <div class="faq-content">
                                    <p>We provide IT Training, Internships, Software Development, Website Design, and Digital Marketing solutions for students, professionals, and businesses.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                            <!-- Faq item -->
                            <div class="faq-item">
                                <h3>Do you offer internships for students?</h3>
                                <div class="faq-content">
                                    <p>Yes, we offer internships in .NET, Java, Python, and Digital Marketing. Students get hands-on experience with live projects to boost their careers.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                            <!-- Faq item -->
                            <div class="faq-item">
                                <h3>Where is Digitrick Consultancy located?</h3>
                                <div class="faq-content">
                                    <p>Our office is located in Lucknow. We also provide online training and services so that students and businesses from anywhere can connect with us.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                            <!-- Faq item -->
                            <div class="faq-item">
                                <h3>Do you provide certificates after training or internship?</h3>
                                <div class="faq-content">
                                    <p>Yes, we provide an industry-recognized certificate after successfully completing any training or internship program at Digitrick Consultancy.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                            <!-- Faq item -->
                            <div class="faq-item">
                                <h3>Can businesses hire you for software and website development?</h3>
                                <div class="faq-content">
                                    <p>Absolutely! We design and develop custom websites, software applications, and digital marketing campaigns tailored to business needs.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                            <!-- Faq item -->
                            <div class="faq-item">
                                <h3>How can I contact Digitrick Consultancy?</h3>
                                <div class="faq-content">
                                    <p>You can reach us via our Contact page, email, phone, or WhatsApp. We are always ready to answer your queries and guide you.</p>
                                </div>
                                <i class="faq-toggle bi bi-chevron-right"></i>
                            </div>
                            <!-- End Faq item-->

                        </div>

                    </div>
                    <!-- End Faq Column-->

                </div>

            </div>

        </section>

        <!-- /Faq Section -->

<%--        <!-- Team Section -->
        <section id="team" class="team section section-bg dark-background">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Our Team</h2>
                <p>Meet the dedicated professionals at Digitrick Consultancy who specialize in IT Training, Internships, Software Development, and Digital Marketing. Our team works together to help students and businesses grow.</p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                        <div class="team-member">
                            <div class="member-img">
                                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                                <div class="social">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>Walter White</h4>
                                <span>Chief Executive Officer</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Team Member -->

                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                        <div class="team-member">
                            <div class="member-img">
                                <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                                <div class="social">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>Sarah Jhonson</h4>
                                <span>Product Manager</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Team Member -->

                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                        <div class="team-member">
                            <div class="member-img">
                                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                                <div class="social">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>William Anderson</h4>
                                <span>CTO</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Team Member -->

                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
                        <div class="team-member">
                            <div class="member-img">
                                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                                <div class="social">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>Amanda Jepson</h4>
                                <span>Accountant</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Team Member -->

                </div>

            </div>

        </section>
        <!-- /Team Section -->--%>

        <!-- Contact Section -->
        <section id="contact" class="contact section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Contact Us</h2>
                <p>Get in touch with Digitrick Consultancy for IT Training, Internships, Software Development, or Digital Marketing services. We are here to help you grow.</p>
            </div>
            <!-- End Section Title -->


            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row gy-4">
                    <div class="col-lg-6 ">
                        <div class="row gy-4">

                            <div class="col-lg-12">
                                <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="200">
                                    <i class="bi bi-geo-alt"></i>
                                    <h3>Address</h3>
                                    <p>Hazratganj , Lucknow.</p>
                                </div>
                            </div>
                            <!-- End Info Item -->

                            <div class="col-md-6">
                                <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="300">
                                    <i class="bi bi-telephone"></i>
                                    <h3>Call Us</h3>
                                    <p>+91 95659 56517</p>
                                </div>
                            </div>
                            <!-- End Info Item -->

                            <div class="col-md-6">
                                <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="400">
                                    <i class="bi bi-envelope"></i>
                                    <h3>Email Us</h3>
                                    <p>info@example.com</p>
                                </div>
                            </div>
                            <!-- End Info Item -->

                        </div>
                    </div>

                    <div class="col-lg-6">
                        <form action="https://themewagon.github.io/Presento/forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="500">
                            <div class="row gy-4">

                                <div class="col-md-6">
                                    <input type="text" name="name" class="form-control" placeholder="Your Name" required="">
                                </div>

                                <div class="col-md-6 ">
                                    <input type="email" class="form-control" name="email" placeholder="Your Email" required="">
                                </div>

                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="subject" placeholder="Subject" required="">
                                </div>

                                <div class="col-md-12">
                                    <textarea class="form-control" name="message" rows="4" placeholder="Message" required=""></textarea>
                                </div>

                                <div class="col-md-12 text-center">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>

                                    <button type="submit">Send Message</button>
                                </div>

                            </div>
                        </form>
                    </div>
                    <!-- End Contact Form -->

                </div>

            </div>

        </section>
        <!-- /Contact Section -->

    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptHolder" runat="Server">
    <!-- Swiper JS Init -->
<script>
  var swiper = new Swiper(".mySwiper", {
    loop: true,
    speed: 600,
    autoplay: {
      delay: 5000,
    },
    slidesPerView: 1,
    spaceBetween: 20,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      768: {
        slidesPerView: 2,
        spaceBetween: 20,
      },
      1200: {
        slidesPerView: 3,
        spaceBetween: 30,
      },
    },
  });
</script>
</asp:Content>

