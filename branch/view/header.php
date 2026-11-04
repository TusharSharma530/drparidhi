
<?php
require_once __DIR__ . '/../../manager/database/db.php';
require_once __DIR__ . '/recaptacha.php';

// Statuses used by each form (handled by this single block)
$header_appointment_status = '';
$appointment_status = '';

// Which form was submitted? "header_appointment" = Appointment modal,
// "confirm_appointment" = Contact Us consultation form
$form_type = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if (isset($_POST['header_appointment'])) {
        $form_type = 'appointment';
    } elseif (isset($_POST['confirm_appointment'])) {
        $form_type = 'contact';
    }
}

if ($form_type != '') {

    $full_name = trim($_POST['full_name'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $phone = trim($_POST['phone'] ?? '');
    $appointment_date = trim($_POST['appointment_date'] ?? '');
    $message = trim($_POST['message'] ?? '');

    // Validate appointment date (only the appointment form sends a date)
    $valid_date = true;

    if ($form_type == 'appointment') {

        $date_parts = explode('-', $appointment_date);

        $valid_date = count($date_parts) == 3 && checkdate(
            (int)$date_parts[1],
            (int)$date_parts[2],
            (int)$date_parts[0]
        );
    }

    $status = 'invalid';

    // Validate form data
    if (
        strlen($full_name) >= 3 &&
        strlen($full_name) <= 60 &&
        strlen($phone) == 10 &&
        ctype_digit($phone) &&
        $phone[0] >= '6' &&
        $phone[0] <= '9' &&
        $valid_date &&
        ($email == '' || filter_var($email, FILTER_VALIDATE_EMAIL))
    ) {

        // Prepare email data
        $name = htmlspecialchars($full_name, ENT_QUOTES, 'UTF-8');
        $email_safe = htmlspecialchars($email, ENT_QUOTES, 'UTF-8');
        $phone_safe = htmlspecialchars($phone, ENT_QUOTES, 'UTF-8');
        $date_safe = htmlspecialchars($appointment_date, ENT_QUOTES, 'UTF-8');
        $message_safe = nl2br(htmlspecialchars($message, ENT_QUOTES, 'UTF-8'));

        // Email subject
        $subject = "New Appointment Request - " . SITE_NAME;

        // Email body
        $body = "
            <h2>New Appointment Request</h2>

            <p><strong>Full Name:</strong> $name</p>

            <p><strong>Email:</strong> $email_safe</p>

            <p><strong>Phone:</strong> $phone_safe</p>
        ";

        if ($appointment_date != '') {
            $body .= "
            <p><strong>Appointment Date:</strong> $date_safe</p>
        ";
        }

        $body .= "
            <p><strong>Message:</strong> $message_safe</p>
        ";

        // Verify Google reCAPTCHA v2
        $recaptcha_token = $_POST['g-recaptcha-response'] ?? '';

        if (!recaptchaVerify($recaptcha_token)) {

            $status = 'captcha_failed';

        } elseif (SendEmailer('tusharsharma6868@gmail.com', $subject, $body)) {

            $status = 'success';

        } else {

            $status = 'failed';
        }
    }

    // Save the status for the form that was submitted
    if ($form_type == 'appointment') {
        $header_appointment_status = $status;
    } else {
        $appointment_status = $status;
    }
}
?>

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
    <link rel="stylesheet" href="<?= $urlbase ?>branch/css/style.css">
    <link rel="stylesheet" href="<?= $urlbase ?>branch/css/responsiveness.css">
</head>

<body>

<header class="site-header">

    <!-- Header Top Section -->
   
    <div class="header-top">
        <div class="container">

            <div class="header-top-inner">

                <!-- Logo -->
                <a class="site-logo" href="<?= $urlbase ?>default">

                    <img src="<?=$path.$logo;?>" alt="<?=$websitename;?> Logo" class="site-logo-img">

                    <span class="logo-text">

                        <span class="logo-name">
                            <?= htmlspecialchars($websitename ?? '', ENT_QUOTES, 'UTF-8') ?>
                        </span>

                        <span class="logo-tagline">
                            <?= str_replace('|', '<br>', htmlspecialchars($headercenterline ?? '', ENT_QUOTES, 'UTF-8')) ?>
                        </span>

                    </span>
                </a>

                <!-- Contact Information -->
                <div class="header-contact">

                    <?php if (!empty($emailid)) { ?>
                        <a href="mailto:<?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>"
                        class="contact-item">

                            <i class="bi bi-envelope"></i>

                            <span class="contact-info">
                                <small>Mail Us</small>
                                <strong>
                                    <?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>
                                </strong>
                            </span>

                        </a>
                    <?php } ?>

                    <?php if (!empty($contactno)) { ?>
                        <a href="tel:<?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>"
                        class="contact-item">

                            <i class="bi bi-telephone"></i>

                            <span class="contact-info">
                                <small>Contact Us</small>
                                <strong>
                                    <?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>

                                    <?php if (!empty($alternateno)) { ?>
                                        , <?= htmlspecialchars($alternateno, ENT_QUOTES, 'UTF-8') ?>
                                    <?php } ?>
                                </strong>
                            </span>

                        </a>
                    <?php } ?>

                </div>

            </div>
        </div>
    </div>


    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">

            <!-- Mobile Brand -->
            <a class="navbar-brand d-lg-none" href="<?= $urlbase ?>default">
                <img src="<?=$path.$logo;?>" alt="<?=$websitename;?> Logo" class="site-logo-img">

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
                        <a class="nav-link active" href="<?= $urlbase ?>default">
                            Home
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<?= $urlbase ?>about">
                            About Us
                        </a>
                    </li>

                    <li class="nav-item dropdown speciality-dropdown">
                        <div class="speciality-nav-wrapper">
                            <a class="nav-link" href="<?= $urlbase ?>specialities">
                                Specialities
                            </a>
                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<?= $urlbase ?>blogs">
                            Blogs
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<?= $urlbase ?>gallery">
                            Gallery
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<?= $urlbase ?>contact">
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

    <a href="<?= $urlbase ?>default" class="sidebar-brand-link">
        <img src="<?=$path.$logo;?>" alt="<?=$websitename;?> Logo" class="sidebar-logo">

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
                <a class="nav-link" href="<?= $urlbase ?>default">
                    <i class="bi bi-house-door me-2"></i>Home
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= $urlbase ?>about">
                    <i class="bi bi-person me-2"></i>About Us
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= $urlbase ?>specialities">
                    <i class="bi bi-heart-pulse me-2"></i>Specialities
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= $urlbase ?>blogs">
                    <i class="bi bi-journal-text me-2"></i>Blogs
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= $urlbase ?>gallery">
                    <i class="bi bi-images me-2"></i>Gallery
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= $urlbase ?>contact">
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

$currentPage = $geturl1 ?? '';

if (!empty($currentPage) && $currentPage !== 'default'):

    $pageTitle = ucwords(
        str_replace(['-', '_'], ' ', $currentPage)
    );

?>


<div class="breadcrumb-section">
    <div class="container">

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">

                <li class="breadcrumb-item">
                    <a href="<?= $urlbase ?>default" class="text-decoration-none">
                        Home
                    </a>
                </li>

                <li class="breadcrumb-item active" aria-current="page">
                    <?= htmlspecialchars($pageTitle, ENT_QUOTES, 'UTF-8') ?>
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
                <input
                type="hidden"
                id="appointmentStatus"
                value="<?= htmlspecialchars($header_appointment_status ?? '', ENT_QUOTES, 'UTF-8') ?>">
            <?php if ($header_appointment_status == 'success') { ?>

                <div class="alert alert-success">
                    Your appointment request has been submitted successfully!
                </div>

            <?php } elseif ($header_appointment_status == 'failed') { ?>

                <div class="alert alert-danger">
                    Sorry! Unable to send your appointment request. Please try again.
                </div>

           <?php } elseif ($header_appointment_status == 'invalid') { ?>

                <div class="alert alert-warning">
                    Please enter valid appointment details.
                </div>

            <?php } elseif ($header_appointment_status == 'captcha_failed') { ?>

                <div class="alert alert-warning">
                    Please verify that you are not a robot.
                </div>

            <?php } ?>

                <form action="" method="POST">

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
                        <!-- Google reCAPTCHA v2 -->
                        <div class="col-12">

                            <div class="g-recaptcha"
                                data-sitekey="<?= htmlspecialchars(RECAPTCHA_SITE_KEY, ENT_QUOTES, 'UTF-8') ?>">
                            </div>

                        </div>

                        <!-- Submit Button -->
                        <div class="col-12">

                           <button
                                type="submit"
                                name="header_appointment"
                                value="1"
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

<!-- jQuery + Slick (used by the sliders initialised in script.js) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<?= $urlbase ?>slick/slick.min.js"></script>

<!-- Main JavaScript -->
 <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script src="<?= $urlbase ?>branch/js/script.js"></script>

</body>
</html>
