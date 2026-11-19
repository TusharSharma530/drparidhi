    <!-- Homepage Banner (web_banner table - slick slider) -->
        <?php
        $bannerQuery = mysqli_query($con, "SELECT wb_img FROM web_banner WHERE status = 1 ORDER BY wb_order ASC, id ASC");
        ?>
       

        <section class="home-banner">
            <?php if ($bannerQuery && mysqli_num_rows($bannerQuery) > 0) { ?>
                <div class="slider" data-slides-desktop="1" data-slides-mobile="1">
                    <?php while ($bannerData = mysqli_fetch_assoc($bannerQuery)) { ?>
                        <?php if (!empty($bannerData['wb_img'])) { ?>
                            <div class="slider-item">
                                <div class="slider-pad">
                                    <img src="<?= $path . $bannerData['wb_img'] ?>" >
                                </div>
                            </div>
                        <?php } ?>
                    <?php } ?>
                </div>
            <?php } ?>
        </section>

        <!-- About / Why Choose Section -->
        <?php
        $aboutQuery = mysqli_query($con, "SELECT sdesc,c_name, featured_img FROM category WHERE id = 101 AND status = 1 LIMIT 1");
        $aboutData = mysqli_fetch_assoc($aboutQuery);
        ?>

        <!-- About / Why Choose Section -->
        <section class="about-doctor-section home-about-section">
            <div class="container">
                <div class="about-row">

                <!-- Left Content -->
                <div class="about-left">
                    <span class="section-tag">Dr. Paridhi Chaudhary</span>

                    <h2 class="section-title">

                        <?php

                        $nameParts = explode('|', $aboutData['c_name'] ?? '');

                        echo htmlspecialchars(trim($nameParts[0]));

                        if (!empty($nameParts[1])) {
                            echo '<br>' . htmlspecialchars(trim($nameParts[1]));
                        }

                        ?>

                    </h2>

                    <?php if (!empty($aboutData['sdesc'])) { ?>
                        <div class="section-text">
                            <?= $aboutData['sdesc'] ?>
                        </div>
                    <?php } ?>

                    
                    <div class="about-actions">

                        <a class="about-btn" href="<?=$path?>about-us">
                            Know More
                        </a>

                        <?php if (!empty($contactno)) { ?>
                            <a class="about-helpline"
                            href="tel:<?= $contactno ?>">

                                Helpline! <?= $contactno?>

                                <?php if (!empty($alternateno)) { ?>
                                    , <?= $alternateno?>
                                <?php } ?>

                            </a>
                        <?php } ?>

                    </div>

                </div>

                <!-- Right Side Image -->
                <div class="why-choose">
                    <?php if (!empty($aboutData['featured_img'])) { ?>
                    <img src="<?= $path . $aboutData['featured_img'] ?>" />
                    <?php } ?>
                </div>

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
           <div class="slider" data-slides-desktop="4" data-slides-mobile="1">

                <?php
                $conditionQuery = mysqli_query($con, "
                    SELECT id, sc_name, sc_url, sdesc, featured_img
                    FROM sub_cat
                    WHERE status = 1
                    ORDER BY id ASC
                ");

                while ($conditionData = mysqli_fetch_assoc($conditionQuery)) {
                ?>

                    <div class="slider-item">
                        <div class="slider-pad">
                            <a href="<?= $path ?>specialities/<?= htmlspecialchars($conditionData['sc_url'] ?? seo_friendly_url($conditionData['sc_name'] ?? '')) ?>" class="condition-card">

                                 <img src="<?= $path . $conditionData['featured_img'] ?>">

                                <h3 class="condition-name">
                                    <?= htmlspecialchars($conditionData['sc_name']) ?>
                                </h3>

                                <p class="condition-text">
                                    <?= htmlspecialchars($conditionData['sdesc']) ?>
                                </p>

                                <span class="read-more">Read More →</span>

                            </a>
                        </div>
                    </div>

                <?php } ?>

            </div>
        </section>

      <!-- Gallery Section -->
       <?php
        $galleryQuery = mysqli_query($con, "SELECT * FROM gallery_imgs WHERE status = 1");
        ?>

        <!-- Gallery Section -->
        <section class="gallery-section home-gallery-section">
            <div class="container">
                <div class="section-head">
                    <span class="section-tag">Our Clinic</span>
                    <h2 class="section-title">Gallery</h2>
                </div>

                <div class="slider" data-slides-desktop="4" data-slides-mobile="2">

                    <?php while ($galleryData = mysqli_fetch_assoc($galleryQuery)) { ?>
                        <?php if (!empty($galleryData['file'])) { ?>
                            <div class="slider-item">
                                <div class="slider-pad">
                                    <div class="gallery-item">
                                        <a href="<?= $path . $galleryData['file'] ?>"
                                        class="glightbox"
                                        data-gallery="clinic-gallery">

                                            <img src="<?= $path . $galleryData['file'] ?>"
                                                alt="Clinic Gallery"
                                                loading="lazy">

                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    <?php } ?>

                </div>
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
                        <img src="<?= $path . $commitmentData['featured_img'] ?>" >
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

                                <a href="tel:<?= $contactno ?>"
                                class="text-white text-decoration-none fs-5">
                                    <?= $contactno ?>

                                    <?php if (!empty($alternateno)) { ?>
                                        , <?= $alternateno ?>
                                    <?php } ?>
                                </a>
                            </div>

                            <div class="col-sm-6">
                                <div class="d-flex align-items-center gap-3 mb-2">
                                    <i class="bi bi-envelope text-white fs-4"></i>
                                    <span class="text-white fw-bold fs-4">E-mail Us:</span>
                                </div>

                                <a href="mailto:<?= $emailid ?>"
                                class="text-white text-decoration-none fs-5">
                                    <?= $emailid ?>
                                </a>
                            </div>

                        </div>

                        <div class="mb-5">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <i class="bi bi-geo-alt text-white fs-4"></i>
                                <span class="text-white fw-bold fs-4">Visit Us:</span>
                            </div>

                            <span class="text-white fs-5">
                                <?= $address ?>
                            </span>
                        </div>

                        <button
                            type="button"
                            class="about-btn bg-white text-dark border-0"
                            data-bs-toggle="modal"
                            data-bs-target="#appointmentModal">
                            Book an Appointment
                        </button>

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
                    ORDER BY id ASC
                ");
                ?>

                <div class="slider" data-slides-desktop="3" data-slides-mobile="1">

                    <?php
                while ($testimonialData = mysqli_fetch_assoc($testimonialQuery)) {
                ?>

                       <div class="slider-item">
                        <div class="slider-pad">
                            <div class="testimonial-card">

                                <?php
                                $desc = $testimonialData['desc'] ?? '';

                                // Get stars from first paragraph
                                preg_match('/<p>\s*(★+)\s*<\/p>/u', $desc, $match);

                                $stars = $match[1] ?? '';

                                // Remove stars paragraph
                                $desc = preg_replace('/<p>\s*★+\s*<\/p>/u', '', $desc, 1);
                                ?>

                                <?php if ($stars) { ?>
                                    <div class="testimonial-stars">
                                        <?= $stars ?>
                                    </div>
                                <?php } ?>

                                <?= strip_tags($desc, '<h4><p><br><strong><b><em><i><u>') ?>

                            </div>
                        </div>
                    </div>

                    <?php
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
                    SELECT id, title, url, sdesc, `file`
                    FROM blogs
                    WHERE status = 1
                    ORDER BY id DESC
                    LIMIT 3
                ");
                ?>

                <div class="slider" data-slides-desktop="3" data-slides-mobile="1">

                    <?php while ($blogData = mysqli_fetch_assoc($blogQuery)) { ?>

                        <div class="slider-item">
                            <div class="slider-pad">

                                <a href="<?= htmlspecialchars($path . 'blogs/' . (!empty($blogData['url']) ? trim($blogData['url']) : seo_friendly_url($blogData['title'] ?? ''))) ?>" class="blog-card h-100">

                                    <img src="<?= $path . $blogData['file']?>"class="img-fluid">

                                    <div class="blog-content p-3">

                                        <span class="section-tag">
                                            Pregnancy Care
                                        </span>

                                        <h3 class="testimonial-heading">
                                            <?= htmlspecialchars($blogData['title'] ?? '') ?>
                                        </h3>

                                        <p class="section-text mt-3">
                                            <?= htmlspecialchars(strip_tags($blogData['sdesc'] ?? '')) ?>
                                        </p>

                                        <span class="read-more">Read More →</span>

                                    </div>

                                </a>

                            </div>
                        </div>

                    <?php } ?>

                </div>

            </div>

        </section>

