


    <!-- Header / Navbar -->
    <?php include 'header.php'; ?>

    <!-- Homepage Banner -->
    <main>
        <?php
        $bannerQuery = mysqli_query($con, "SELECT c_name, featured_img FROM category WHERE id = 99 AND status = 1 LIMIT 1");
        $bannerData = mysqli_fetch_assoc($bannerQuery);
        ?>

        <section class="home-banner">
            <?php if (!empty($bannerData['featured_img'])) { ?>
                <img
                    src="<?= htmlspecialchars(($path ?? '') . ($bannerData['featured_img'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                >
            <?php } ?>
        </section>

        <!-- About / Why Choose Section -->
        <?php
        $aboutQuery = mysqli_query($con, "SELECT sdesc,c_name, featured_img FROM category WHERE id = 101 AND status = 1 LIMIT 1");
        $aboutData = mysqli_fetch_assoc($aboutQuery);
        ?>

        <!-- About / Why Choose Section -->
        <section class="about-doctor-section container">
            <div class="about-row">

                <!-- Left Content -->
                <div class="about-left">
                    <span class="section-tag">Dr. Paridhi Chaudhary</span>

                    <h2 class="section-title">
                        <?= htmlspecialchars($aboutData['c_name'] ?? '') ?>
                        <br>MBBS, MS, DNB
                    </h2>

                    <?php if (!empty($aboutData['sdesc'])) { ?>
                        <div class="section-text">
                            <?= $aboutData['sdesc'] ?>
                        </div>
                    <?php } ?>

                    <div class="about-actions">
                        <a class="about-btn" href="about">Know More</a>

                        <a class="about-helpline" href="tel:+919286197331">
                            Helpline! +91-9286197331 , +91-01214567142
                        </a>
                    </div>
                </div>

                <!-- Right Side Image -->
                <div class="why-choose">
                    <?php if (!empty($aboutData['featured_img'])) { ?>
                    <img
                        src="<?= htmlspecialchars(($path ?? '') . ($aboutData['featured_img'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                        />
                    <?php } ?>
                </div>

            </div>
        </section>

       <section class="conditions-section container">

            <?php
            $titleQuery = mysqli_query($con, "SELECT sdesc FROM category WHERE id = 102 AND status = 1 LIMIT 1");
            $titleData = mysqli_fetch_assoc($titleQuery);
            ?>

            <div class="section-head">
                <span class="section-tag">Condition We Treat</span>

                <h2 class="section-title">
                    <?= htmlspecialchars(strip_tags($titleData['sdesc'] ?? '')) ?>
                </h2>
            </div>
           <div class="row g-4">

                <?php
                $conditionQuery = mysqli_query($con, "
                    SELECT id, sc_name, sdesc, featured_img
                    FROM sub_cat
                    WHERE status = 1
                    ORDER BY id ASC
                ");

                while ($conditionData = mysqli_fetch_assoc($conditionQuery)) {
                ?>

                    <div class="col-md-6 col-lg-3">
                        <a href="pregnancycare" class="condition-card">

                            <?php if (!empty($conditionData['featured_img'])) { ?>
                                <img
                                   src="<?= htmlspecialchars(($path ?? '') . ($conditionData['featured_img'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                                >
                            <?php } ?>

                            <h3 class="condition-name">
                                <?= htmlspecialchars($conditionData['sc_name']) ?>
                            </h3>

                            <p class="condition-text">
                                <?= htmlspecialchars($conditionData['sdesc']) ?>
                            </p>

                            <span class="read-more">Read More →</span>

                        </a>
                    </div>

                <?php } ?>

            </div>
        </section>

      <!-- Gallery Section -->
       <?php
        $galleryQuery = mysqli_query($con, "SELECT * FROM gallery_imgs WHERE status = 1");
        ?>

        <!-- Gallery Section -->
        <section class="gallery-section container">
            <div class="section-head">
                <span class="section-tag">Our Clinic</span>
                <h2 class="section-title">Gallery</h2>
            </div>

            <div class="gallery-grid">

                <?php while ($galleryData = mysqli_fetch_assoc($galleryQuery)) { ?>
                    <?php if (!empty($galleryData['file'])) { ?>
                        <div class="gallery-item">
                            <img
                                src="<?= htmlspecialchars(($path ?? '') . ($galleryData['file'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                            >
                        </div>
                    <?php } ?>
                <?php } ?>

            </div>
        </section>
        
        
        <?php
        $commitmentQuery = mysqli_query($con, "
            SELECT c_name, sdesc, featured_img
            FROM category
            WHERE id = 105 AND status = 1
            LIMIT 1
        ");
        $commitmentData = mysqli_fetch_assoc($commitmentQuery);
        ?>

        <section class="about-doctor-section commitment-section container">

            <div class="about-row">

                <div class="commitment-image">
                    <?php if (!empty($commitmentData['featured_img'])) { ?>
                        <img
                            src="<?= htmlspecialchars(($path ?? '') . ($commitmentData['featured_img'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                        >
                    <?php } ?>
                </div>

                <div class="about-left">
                    <span class="section-tag">My Commitment</span>

                    <h2 class="section-title">
                        <?= htmlspecialchars(strip_tags($commitmentData['c_name'] ?? '')) ?>
                    </h2>

                    <?php if (!empty($commitmentData['sdesc'])) { ?>
                        <div class="section-text">
                            <?= $commitmentData['sdesc'] ?>
                        </div>
                    <?php } ?>

                </div>

            </div>

        </section>
        <!-- Appointment Section -->
        
        <section class="about-doctor-section appointment-section">
            <div class="container px-4">
                <div class="row">
                    <div class="col-lg-7">

                        <h2 class="section-title text-white mb-5">
                            Facing Gynae Concerns? Get Expert Help From
                            Dr. Paridhi Chaudhary
                        </h2>

                        <div class="row g-4 mb-4">

                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3 mb-2">
                                    <i class="bi bi-telephone text-white fs-4"></i>
                                    <span class="text-white fw-bold fs-4">Call Us:</span>
                                </div>

                                <a href="tel:<?= htmlspecialchars($contactno ?? '', ENT_QUOTES, 'UTF-8') ?>"
                                class="text-white text-decoration-none fs-5">
                                    <?= htmlspecialchars($contactno ?? '', ENT_QUOTES, 'UTF-8') ?>

                                    <?php if (!empty($alternateno)) { ?>
                                        , <?= htmlspecialchars($alternateno, ENT_QUOTES, 'UTF-8') ?>
                                    <?php } ?>
                                </a>
                            </div>

                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3 mb-2">
                                    <i class="bi bi-envelope text-white fs-4"></i>
                                    <span class="text-white fw-bold fs-4">E-mail Us:</span>
                                </div>

                                <a href="mailto:<?= htmlspecialchars($emailid ?? '', ENT_QUOTES, 'UTF-8') ?>"
                                class="text-white text-decoration-none fs-5">
                                    <?= htmlspecialchars($emailid ?? '', ENT_QUOTES, 'UTF-8') ?>
                                </a>
                            </div>

                        </div>

                        <div class="mb-5">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <i class="bi bi-geo-alt text-white fs-4"></i>
                                <span class="text-white fw-bold fs-4">Visit Us:</span>
                            </div>

                            <span class="text-white fs-5">
                                <?= htmlspecialchars($address ?? '', ENT_QUOTES, 'UTF-8') ?>
                            </span>
                        </div>

                        <a class="about-btn bg-white text-dark border-0"
                        href="contact">
                            Book an Appointment
                        </a>

                    </div>
                </div>
            </div>
        </section>


        <!-- Symptoms Section -->
         
        <section class="conditions-section container">

            <div class="section-head">
                <h2 class="section-title">
                    <?php
                    $symptomQuery = mysqli_query($con, "
                        SELECT c_name,sdesc, c_desc FROM category
                        WHERE id = 107 AND status = 1
                        LIMIT 1
                    ");

                    $symptomData = mysqli_fetch_assoc($symptomQuery);
                    ?>

                    <?= $symptomData['c_name'] ?? '' ?>
                </h2>

                <p class="section-text mt-4 mb-0">
                    <?= $symptomData['sdesc'] ?? '' ?>
                </p>
            </div>

            <h3 class="section-tag text-center mb-5">
                Common Symptoms to Watch Out For:
            </h3>

            <div class="symptom-grid">
                <?= $symptomData['c_desc'] ?? '' ?>
            </div>

        </section>


        <!-- Schedule Consultation / Appointment Section -->
<!--        <section class="consult-section">-->
<!--            <div class="container px-4">-->

<!--                <div class="section-head">-->
<!--                    <h2 class="section-title">-->
<!--                        Your Health Deserves Priority. Don&rsquo;t Wait &mdash;-->
<!--                        Schedule Your Consultation Now-->
<!--                    </h2>-->
<!--                </div>-->

<!--                <div class="row g-4 align-items-start">-->

                    <!-- Left Side - Clinic / Hospital Info -->
<!--                    <div class="col-lg-7">-->

                     
<!--                        <div class="consult-tabs" role="tablist">-->
<!--                            <button type="button"-->
<!--                                    class="consult-tab"-->
<!--                                    data-consult-tab="clinic"-->
<!--                                    role="tab"-->
<!--                                    aria-selected="false">-->
<!--                                Clinic-->
<!--                            </button>-->

                            <!-- <button type="button"
<!-                                    class="consult-tab active"-->
<!--                                    data-consult-tab="hospital"-->
<!--                                    role="tab"-->
<!--                                    aria-selected="true">-->
<!--                                Hospital-->
<!--                            </button> -->
<!--                        </div>-->

                        
<!--                        <ul class="consult-list">-->

<!--                            <li class="consult-item">-->
<!--                                <span class="consult-icon">-->
<!--                                    <i class="bi bi-telephone"></i>-->
<!--                                </span>-->
<!--                                <span class="consult-detail">-->
                                    
<!--                                    <span class="consult-label">Call now</span>-->
<!--                                    <a class="consult-value" href="tel:+919286197331">-->
<!--                                        +919286197331 , 01214567142-->
<!--                                    </a>-->
<!--                                </span>-->
<!--                            </li>-->

<!--                            <li class="consult-item">-->
<!--                                <span class="consult-icon">-->
<!--                                    <i class="bi bi-envelope"></i>-->
<!--                                </span>-->
<!--                                <span class="consult-detail">-->
<!--                                    <span class="consult-label">Email</span>-->
<!--                                    <a class="consult-value" href="mailto:drparidhichaudhary@gmail.com">-->
<!--                                        drparidhichaudhary@gmail.com-->
<!--                                    </a>-->
<!--                                </span>-->
<!--                            </li>-->

<!--                            <li class="consult-item">-->
<!--                                <span class="consult-icon">-->
<!--                                    <i class="bi bi-geo-alt"></i>-->
<!--                                </span>-->
<!--                                <span class="consult-detail">-->
<!--                                    <span class="consult-label">Address</span>-->
<!--                                    <span class="consult-value" id="consultAddress">-->
<!--                                       Shop No,6,7,RPG Galleria,-->
<!--                                       GP Pocket ,Ganga Nagar,-->
<!--                                       Meerut,Uttar Pradesh 250001-->
<!--                                    </span>-->
<!--                                </span>-->
<!--                            </li>-->

<!--                            <li class="consult-item">-->
<!--                                <span class="consult-icon">-->
<!--                                    <i class="bi bi-clock"></i>-->
<!--                                </span>-->
<!--                                <span class="consult-detail">-->
<!--                                    <span class="consult-label">Timings</span>-->
<!--                                    <span class="consult-value">-->
<!--                                        Mon &ndash; Sat: 11:00 AM To 08:00 PM (Closed on Sundays)-->
<!--                                    </span>-->
<!--                                </span>-->
<!--                            </li>-->

<!--                        </ul>-->

                        <!-- Location Button -->
<!--                        <button type="button" class="consult-branch" id="consultBranch">-->
<!--                            Meerut-->
<!--                        </button>-->

                          <!-- Google Map -->
<!--                       <div class="consult-map">-->
<!--                            <iframe-->
<!--                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3489.3969264330626!2d77.74936437551455!3d29.00523667546334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c7b9d685b63ed%3A0x424008da6370361b!2sDr%20Paridhi%20Chaudhary!5e0!3m2!1sen!2sin!4v1792673184230!5m2!1sen!2sin"-->
<!--                                loading="lazy"-->
<!--                                allowfullscreen>-->
<!--                            </iframe>-->

<!--                            <div class="consult-map-address">-->
<!--                                Shop No. 6, 7, RPG Galleria,<br>-->
<!--                                GP Pocket, Ganga Nagar-->
<!--                            </div>-->
<!--                        </div>-->

<!--                    </div>-->

                    <!-- Right Side - Appointment Form -->
<!--                    <div class="col-lg-5">-->
<!--    <div class="consult-form-card">-->

<!--        <form class="consult-form" id="consultForm" novalidate>-->

<!--            <div class="consult-field">-->
<!--                <label for="consultName">Full Name</label>-->
<!--                <div class="consult-input-wrap">-->
<!--                    <i class="bi bi-person"></i>-->
<!--                    <input type="text"-->
<!--                           class="consult-input validate-name"-->
<!--                           id="consultName"-->
<!--                           name="full_name"-->
<!--                           placeholder="Your Name"-->
<!--                           required>-->
<!--                </div>-->
<!--            </div>-->

<!--            <div class="consult-field">-->
<!--                <label for="consultEmail">Email Address</label>-->
<!--                <div class="consult-input-wrap">-->
<!--                    <i class="bi bi-envelope"></i>-->
<!--                    <input type="email"-->
<!--                           class="consult-input validate-email"-->
<!--                           id="consultEmail"-->
<!--                           name="email"-->
<!--                           placeholder="Your Email"-->
<!--                           required>-->
<!--                </div>-->
<!--            </div>-->

<!--            <div class="consult-field">-->
<!--                <label for="consultPhone">Phone Number</label>-->
<!--                <div class="consult-input-wrap">-->
<!--                    <i class="bi bi-telephone"></i>-->
<!--                    <input type="tel"-->
<!--                           class="consult-input validate-phone"-->
<!--                           id="consultPhone"-->
<!--                           name="phone"-->
<!--                           placeholder="10-digit mobile number"-->
<!--                           maxlength="10"-->
<!--                           required>-->
<!--                </div>-->
<!--            </div>-->

<!--            <div class="consult-field">-->
<!--                <label for="consultMessage">Message</label>-->
<!--                <div class="consult-input-wrap consult-input-area">-->
<!--                    <i class="bi bi-chat-dots"></i>-->
<!--                    <textarea class="consult-input"-->
<!--                              id="consultMessage"-->
<!--                              name="message"-->
<!--                              placeholder="Message"></textarea>-->
<!--                </div>-->
<!--            </div>-->

<!--            <button type="submit" class="consult-submit">-->
<!--                Confirm Appointment-->
<!--            </button>-->

<!--            <p class="consult-msg" id="consultMsg"></p>-->

<!--        </form>-->

<!--    </div>-->
<!--</div>-->

<!--                </div>-->

<!--            </div>-->
<!--        </section>-->
        

       
        <section class="testimonials-section">

            <div class="container px-4">

                <div class="section-head text-center mb-5">
                    <span class="section-tag">Testimonials</span>

                    <h2 class="section-title">
                        What Our Patients Say About Us
                    </h2>

                    <p class="section-text mt-3">
                        Experiences shared by patients about their care
                        and consultation with Dr. Paridhi Chaudhary.
                    </p>
                </div>

                <?php
                $testimonialQuery = mysqli_query($con, "
                    SELECT `desc` FROM testimonials
                    WHERE status = 1
                ");
                ?>

                <div class="testimonials-flex">

                    <?php
                    $reviewHeadings = [
                        'Excellent',
                        'Very Caring',
                        'Great Experience'
                    ];

                    $i = 0;

                    while ($testimonialData = mysqli_fetch_assoc($testimonialQuery)) {
                    ?>

                        <div class="testimonial-card">
                            <div class="testimonial-stars" aria-label="5 stars">
                                ★★★★★
                            </div>

                            <h3 class="testimonial-heading">
                                <?= $reviewHeadings[$i % 3] ?>
                            </h3>

                            <p class="section-text">
                                <?= htmlspecialchars(strip_tags($testimonialData['desc'] ?? ''), ENT_QUOTES, 'UTF-8') ?>
                            </p>
                        </div>

                    <?php
                        $i++;
                    }
                    ?>

                </div>

            </div>

        </section>

        

        
        <section class="blogs-section">

            <div class="container px-4">

                <div class="section-head text-center">
                    <span class="section-tag">Health Articles</span>

                    <h2 class="section-title">
                        Latest Blogs
                    </h2>

                    <p class="section-text mt-3">
                        Explore helpful information, expert guidance, and
                        women's healthcare tips from Dr. Paridhi Chaudhary.
                    </p>
                </div>

                <?php
                $blogQuery = mysqli_query($con, "
                    SELECT title, sdesc, `file`
                    FROM blogs
                    WHERE status = 1
                    ORDER BY id DESC
                    LIMIT 3
                ");
                ?>

                <div class="row g-4">

                    <?php while ($blogData = mysqli_fetch_assoc($blogQuery)) { ?>

                        <div class="col-md-6 col-lg-4">

                            <a href="pregnancycareblog" class="blog-card h-100">

                                <img
                                    src="<?= htmlspecialchars(($path ?? '') . ($blogData['file'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                                    class="img-fluid"
                                    loading="lazy"
        >

                                <div class="blog-content p-3">

                                    <span class="section-tag">
                                        Pregnancy Care
                                    </span>

                                    <h3 class="testimonial-heading">
                                        <?= htmlspecialchars($blogData['title'] ?? '', ENT_QUOTES, 'UTF-8') ?>
                                    </h3>

                                    <p class="section-text mt-3">
                                        <?= htmlspecialchars(strip_tags($blogData['sdesc'] ?? ''), ENT_QUOTES, 'UTF-8') ?>
                                    </p>

                                    <span class="read-more">Read More →</span>

                                </div>

                            </a>

                        </div>

                    <?php } ?>

                </div>

            </div>

        </section>


    </main>
   <?php include __DIR__ . '/footer.php'; ?>    
   

</body>
</html>
