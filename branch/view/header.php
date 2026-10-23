
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Home | Dr.Paridhi Chaudhary</title>

    <!-- Google Font: Poppins -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="branch/css/style.css">
</head>
 <script src="branch/js/script.js"></script>
<body>

<header class="site-header">

    <div class="header-top">
        <div class="container">
            <div class="header-top-inner">

                <!-- Logo -->
                <a class="site-logo" href="default">
                    <img
                        src="branch/assets/logo.png"
                        alt="Dr.Paridhi Chaudhary Logo"
                        class="site-logo-img"
                    >
                    <span class="logo-text">
                        <span class="logo-name">Dr.Paridhi Chaudhary</span>
                        <span class="logo-tagline">Obstetrician &amp; Gynecologist Laparascopic
                            <br>Surgeon and Infertility Specialist
                        </span>
                    </span>
                </a>

                <!-- Contact Info -->
                <div class="header-contact">
                    <a href="mailto:drparidhi80@gmail.com" class="contact-item">
                        <i class="bi bi-envelope"></i>
                        <span class="contact-info">
                            <strong>drparidhichaudhary@gmail.com</strong>
                            <small>Mail Us</small>
                        </span>
                    </a>

                    <a href="tel:+919286197331" class="contact-item">
                        <i class="bi bi-telephone"></i>
                        <span class="contact-info">
                            <strong>+91-9286197331 , 0121 4567142</strong>
                            <small>Contact Us</small>
                        </span>
                    </a>
                </div>

            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg container ">
        <div class="container-fluid ">

            <a class="navbar-brand d-lg-none" href="default">
                <img
                    src="branch/assets/logo.png"
                    alt="Dr.Paridhi Chaudhary Logo"
                    class="site-logo-img"
                >
                <span class="logo-text">
                    <span class="logo-name">Dr. Paridhi</span>
                    <span class="logo-tagline">Obstetrician &amp; Gynecologist Laparascopic 
                        <br> Surgeon and Infertility Specialist
                    </span>
                </span>
            </a>

            <!-- Navigation Links -->
            <div class="collapse navbar-collapse" id="mainNavbar">
                <ul class="navbar-nav me-auto align-items-lg-center">

                    <li class="nav-item">
                        <a class="nav-link active" href="default">
                            Home
                        </a>
                    </li>

                   <li class="nav-item">
                        <a class="nav-link" href="about">
                            About Us
                        </a>
                    </li>


                    
                   
                    <li class="nav-item dropdown speciality-dropdown">

                        <div class="speciality-nav-wrapper">
                            <!-- Click text to open Specialities page -->
                            <a class="nav-link" href="specialities">
                                Specialities
                            </a>

                            <!-- Click arrow to open dropdown
                            <button
                                class="nav-link dropdown-toggle speciality-toggle"
                                type="button"
                                id="specialitiesDropdown"
                                data-bs-toggle="dropdown"
                                aria-expanded="false"
                                aria-label="Show speciality options">
                            </button> -->
                        </div>

                        <!-- <ul class="dropdown-menu" aria-labelledby="specialitiesDropdown">
                            <li><a class="dropdown-item" href="pregnancycare">Antenatal Screening, Pregnancy Treatment Including High Rusk Pregnancy</a></li>
                            <li><a class="dropdown-item" href="high-risk-pregnancy">Delivery-Normal and C-Section</a></li>
                            <li><a class="dropdown-item" href="pcos-pcod">Infertility Problem</a></li>
                            <li><a class="dropdown-item" href="menstrual-disorders">Treatment of itching,pain and other Infection of female genital tract,PCOS Treatment</a></li>
                            <li><a class="dropdown-item" href="infertility-consultation">Period Related Problem</a></li>
                            <li><a class="dropdown-item" href="ovarian-cysts">Adolescent girls health related problem</a></li>
                            <li><a class="dropdown-item" href="uterine-fibroids">Cancer Screening and Prevention</a></li>
                            <li><a class="dropdown-item" href="menopause-care">Laparascopic Hysterectomy and Open Surgical Hysterectomy</a></li>
                        </ul> -->

                    </li>




                    <li class="nav-item">
                        <a class="nav-link" href="blogs">
                            Blogs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="gallery">
                            Gallery
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="contact">
                            Contact Us
                        </a>
                    </li>

                    
                    <li class="nav-item ms-lg-3 mt-3 mt-lg-0">
                        <button
                            type="button"
                            class="btn appointment-btn"
                            data-bs-toggle="modal"
                            data-bs-target="#appointmentModal">
                            Book an Appointment
                        </button>
                    </li>


                </ul>
            </div>

        </div>
    </nav>
    
        <?php
        $currentPage = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));

        $pages = [
            'about'        => 'About Us',
            'specialities' => 'Specialities',
            'blogs'        => 'Blogs',
            'gallery'        => 'Gallery',
            'contact'      => 'Contact Us'
        ];

        if (isset($pages[$currentPage])):
        ?>

        <div class="breadcrumb-section container">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item">
                            <a href="default">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            <?= htmlspecialchars($pages[$currentPage], ENT_QUOTES, 'UTF-8') ?>
                        </li>
                    </ol>
                </nav>
            </div>
        </div>

        <?php endif; ?>
      


</header>

<!-- Appointment Modal -->
<div class="modal fade" id="appointmentModal" tabindex="-1"
     aria-labelledby="appointmentModalLabel" aria-hidden="true">

    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content appointment-modal">

            <div class="modal-header">
                <h5 class="modal-title" id="appointmentModalLabel">
                    <i class="bi bi-calendar2-check me-2"></i>
                    Book an Appointment
                </h5>

                <button type="button" class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>

            <div class="modal-body p-4">

                <p class="text-muted mb-4">
                    Please fill in your details to request an appointment
                    with Dr. Paridhi Chaudhary.
                </p>

                <form action="../view/appointment.php" method="POST">

                    <div class="row g-3">

                        <div class="col-md-6">
                            <label for="appointmentName" class="form-label">
                                Full Name *
                            </label>
                            <input type="text" class="form-control"
                                   id="appointmentName" name="full_name"
                                   placeholder="Enter your name" required>
                        </div>

                        <div class="col-md-6">
                            <label for="appointmentPhone" class="form-label">
                                Phone Number *
                            </label>
                            <input type="tel" class="form-control"
                                   id="appointmentPhone" name="phone"
                                   placeholder="Enter phone number" required>
                        </div>

                        <div class="col-md-6">
                            <label for="appointmentEmail" class="form-label">
                                Email Address
                            </label>
                            <input type="email" class="form-control"
                                   id="appointmentEmail" name="email"
                                   placeholder="Enter email address">
                        </div>

                        <div class="col-md-6">
                            <label for="appointmentDate" class="form-label">
                                Preferred Date *
                            </label>
                            <input type="date" class="form-control"
                                   id="appointmentDate"
                                   name="appointment_date" required>
                        </div>

                        <div class="col-12">
                            <label for="appointmentMessage" class="form-label">
                                Message
                            </label>
                            <textarea class="form-control"
                                      id="appointmentMessage"
                                      name="message" rows="3"
                                      placeholder="Enter your concern (optional)"></textarea>
                        </div>

                        <div class="col-12">
                            <button type="submit"
                                    class="btn appointment-submit w-100 ">
                                Submit Appointment Request
                            </button>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
