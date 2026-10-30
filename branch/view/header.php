
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

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">

    <!-- Main CSS -->
    <link rel="stylesheet" href="branch/css/style.css">
    <link rel="stylesheet" href="branch/css/responsiveness.css">
</head>

<body>

<header class="site-header">

    <!-- Header Top Section -->
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
                        <span class="logo-tagline">
                            Obstetrician &amp; Gynecologist Laparascopic
                            <br>
                            Surgeon and Infertility Specialist
                        </span>
                    </span>
                </a>

                <!-- Contact Information -->
                <div class="header-contact">

                    <a href="mailto:drparidhi80@gmail.com" class="contact-item">
                        <i class="bi bi-envelope"></i>

                        <span class="contact-info">
                            <small>Mail Us</small>
                            <strong>drparidhichaudhary@gmail.com</strong>
                        </span>
                    </a>

                    <a href="tel:+919286197331" class="contact-item">
                        <i class="bi bi-telephone"></i>

                        <span class="contact-info">
                            <small>Contact Us</small>
                            <strong>+91-9286197331 , +91-01214567142</strong>
                        </span>
                    </a>

                </div>

            </div>
        </div>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">

            <!-- Mobile Brand -->
            <a class="navbar-brand d-lg-none" href="default">
                <img
                    src="branch/assets/logo.png"
                    alt="Dr.Paridhi Chaudhary Logo"
                    class="site-logo-img"
                >

                <span class="logo-text">
                    <span class="logo-name">Dr. Paridhi</span>
                    <span class="logo-tagline">
                        Obstetrician &amp; Gynecologist Laparascopic
                        <br>
                        Surgeon and Infertility Specialist
                    </span>
                </span>
            </a>
 <!-- Mobile Hamburger Button -->
<button
    class="navbar-toggler d-lg-none"
    type="button"
    data-bs-toggle="offcanvas"
    data-bs-target="#mobileSidebar"
    aria-controls="mobileSidebar"
    aria-label="Open navigation menu"
>
    <span class="navbar-toggler-icon"></span>
</button>
            <!-- Navigation Links -->
            <div class="collapse navbar-collapse d-none d-lg-flex" id="desktopNavbar">

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
                            <a class="nav-link" href="specialities">
                                Specialities
                            </a>
                        </div>
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

                    <!-- Appointment Button -->
                    <li class="nav-item ms-lg-3 mt-3 mt-lg-0">
                        <button
                            type="button"
                            class="btn appointment-btn"
                            data-bs-toggle="modal"
                            data-bs-target="#appointmentModal"
                        >
                            Book an Appointment
                        </button>
                    </li>

                </ul>
            </div>

        </div>
    </nav>
    <!-- Mobile Sidebar -->
<div
    class="offcanvas offcanvas-end mobile-sidebar d-lg-none"
    tabindex="-1"
    id="mobileSidebar"
    aria-labelledby="mobileSidebarLabel"
>
    <!-- Sidebar Header -->
   
<!-- Sidebar Header with Logo -->
<div class="offcanvas-header mobile-sidebar-header">

    <a href="default" class="sidebar-brand-link">
        <img
            src="./branch/assets/logo.png"
            alt="Dr. Paridhi Chaudhary Logo"
            class="sidebar-logo"
        >

        <span class="sidebar-brand-text">
            <span class="sidebar-brand-name" id="mobileSidebarLabel">
                Dr. Paridhi Chaudhary
            </span>

            <span class="sidebar-brand-tagline">
                Obstetrician &amp; Gynecologist
            </span>
        </span>
    </a>

    <button
        type="button"
        class="btn-close"
        data-bs-dismiss="offcanvas"
        aria-label="Close menu"
    ></button>

</div>


    <!-- Sidebar Navigation -->
    <div class="offcanvas-body">
        
        <ul class="navbar-nav">
            
            

            <li class="nav-item">
                <a class="nav-link" href="default">
                    <i class="bi bi-house-door me-2"></i>Home
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="about">
                    <i class="bi bi-person me-2"></i>About Us
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="specialities">
                    <i class="bi bi-heart-pulse me-2"></i>Specialities
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="blogs">
                    <i class="bi bi-journal-text me-2"></i>Blogs
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="gallery">
                    <i class="bi bi-images me-2"></i>Gallery
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="contact">
                    <i class="bi bi-telephone me-2"></i>Contact Us
                </a>
            </li>

        </ul>

        <!-- Appointment Button -->
        <div class="mt-4">
            <button
                type="button"
                class="btn appointment-btn w-100"
                data-bs-toggle="modal"
                data-bs-target="#appointmentModal"
                data-bs-dismiss="offcanvas"
            >
                Book an Appointment
            </button>
        </div>
    </div>
</div>

</header>


<!-- Breadcrumb Section: Outside Sticky Header -->
<?php

$currentPage = basename(
    parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH)
);

$pages = [
    'about'        => 'About Us',
    'specialities' => 'Specialities',
    'blogs'        => 'Blogs',
    'gallery'      => 'Gallery',
    'contact'      => 'Contact Us'
];

if (isset($pages[$currentPage])):

?>

<div class="breadcrumb-section">
    <div class="container">

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">

                <li class="breadcrumb-item">
                    <a href="default" class="text-decoration-none">
                        Home
                    </a>
                </li>

                <li class="breadcrumb-item active" aria-current="page">
                    <?= htmlspecialchars(
                        $pages[$currentPage],
                        ENT_QUOTES,
                        'UTF-8'
                    ) ?>
                </li>

            </ol>
        </nav>

    </div>
</div>

<?php endif; ?>


<!-- Appointment Modal -->
<div
    class="modal fade"
    id="appointmentModal"
    tabindex="-1"
    aria-labelledby="appointmentModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog modal-dialog-centered modal-lg">

        <div class="modal-content appointment-modal">

            <!-- Modal Header -->
            <div class="modal-header">

                <h5 class="modal-title" id="appointmentModalLabel">
                    <i class="bi bi-calendar2-check me-2"></i>
                    Book an Appointment
                </h5>

                <button
                    type="button"
                    class="btn-close btn-close-white"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                ></button>

            </div>

            <!-- Modal Body -->
            <div class="modal-body p-4">

                <p class="text-muted mb-4">
                    Please fill in your details to request an appointment
                    with Dr. Paridhi Chaudhary.
                </p>

                <form action="../view/appointment.php" method="POST">

                    <div class="row g-3">

                        <!-- Full Name -->
                        <div class="col-md-6">

                            <label for="appointmentName" class="form-label">
                                Full Name *
                            </label>

                            <input
                                type="text"
                                class="form-control"
                                id="appointmentName"
                                name="full_name"
                                placeholder="Enter your name"
                                pattern="[A-Za-z]+( [A-Za-z]+)*"
                                minlength="3"
                                maxlength="60"
                                title="Only letters and spaces are allowed."
                                required
                            >

                            <div class="invalid-feedback">
                                Name must contain only letters and spaces,
                                with at least 3 characters.
                            </div>

                        </div>

                        <!-- Phone Number -->
                        <div class="col-md-6">

                            <label for="appointmentPhone" class="form-label">
                                Phone Number *
                            </label>

                            <input
                                type="tel"
                                class="form-control"
                                id="appointmentPhone"
                                name="phone"
                                placeholder="Enter 10-digit mobile number"
                                pattern="[6-9][0-9]{9}"
                                maxlength="10"
                                inputmode="numeric"
                                title="Enter a valid 10-digit Indian mobile number."
                                required
                            >

                            <div class="invalid-feedback">
                                Enter a valid 10-digit mobile number
                                starting with 6, 7, 8, or 9.
                            </div>

                        </div>

                        <!-- Email Address -->
                        <div class="col-md-6">

                            <label for="appointmentEmail" class="form-label">
                                Email Address
                            </label>

                            <input
                                type="email"
                                class="form-control"
                                id="appointmentEmail"
                                name="email"
                                placeholder="Enter email address"
                                maxlength="254"
                                title="Enter a valid email address."
                            >

                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>

                        </div>

                        <!-- Appointment Date -->
                        <div class="col-md-6">

                            <label for="appointmentDate" class="form-label">
                                Preferred Date *
                            </label>

                            <input
                                type="date"
                                class="form-control"
                                id="appointmentDate"
                                name="appointment_date"
                                required
                            >

                        </div>

                        <!-- Message -->
                        <div class="col-12">

                            <label for="appointmentMessage" class="form-label">
                                Message
                            </label>

                            <textarea
                                class="form-control"
                                id="appointmentMessage"
                                name="message"
                                rows="3"
                                placeholder="Enter your concern (optional)"
                            ></textarea>

                        </div>

                        <!-- Submit Button -->
                        <div class="col-12">

                            <button
                                type="submit"
                                class="btn appointment-submit w-100"
                            >
                                Submit Appointment Request
                            </button>

                        </div>

                    </div>

                </form>

            </div>
        </div>
    </div>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Main JavaScript -->
<script src="branch/js/script.js"></script>

</body>
</html>
