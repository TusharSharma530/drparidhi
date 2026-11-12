
<footer class="site-footer">

    <div class="container">

        <!-- Top Row: Logo + Follow Us -->
       
        <div class="footer-top">

            <a href="<?= $path ?>" class="footer-doctor-brand">

                <span class="footer-doctor-logo">
                    <img src="<?= $path  . $logo ?>" >
                </span>

                <span class="footer-doctor-info">

                    <span class="footer-doctor-name">
                        <?= htmlspecialchars($websitename ?? '') ?>
                    </span>

                <span class="footer-doctor-tagline">
                        <?= str_replace('|', '<br>', htmlspecialchars($headercenterline ?? '')) ?>
                    </span>
                </span>
            </a>

            <div class="footer-follow">

                <span class="footer-follow-title">Follow Us On</span>

                <div class="footer-social-icons">

                    <?php if (!empty($youtube)) { ?>
                        <a href="<?= htmlspecialchars($youtube) ?>"
                        rel="noopener noreferrer"
                        class="social-youtube"
                        aria-label="YouTube">
                            <i class="bi bi-youtube"></i>
                        </a>
                    <?php } ?>

                    <?php if (!empty($instagram)) { ?>
                        <a href="<?= htmlspecialchars($instagram) ?>"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="social-instagram"
                        aria-label="Instagram">
                            <i class="bi bi-instagram"></i>
                        </a>
                    <?php } ?>

                    <?php if (!empty($facebook)) { ?>
                        <a href="<?= htmlspecialchars($facebook) ?>"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="social-facebook"
                        aria-label="Facebook">
                            <i class="bi bi-facebook"></i>
                        </a>
                    <?php } ?>

                </div>
            </div>

        </div>


        <!-- Dashed Divider -->
        <div class="footer-divider"></div>

        <!-- Middle Columns -->
        <div class="row g-4 footer-main">

            <div class="col-md-6 col-lg-3">
                <h3>About Us</h3>

                <p>
                    <?= htmlspecialchars($footerdesc ?? '') ?>
                </p>
            </div>

            <!-- Contact Info -->
           
            <div class="col-md-6 col-lg-3">
                <h3>Contact Info</h3>

                <ul class="footer-contact-list">

                    <li>
                        <i class="bi bi-geo-alt-fill"></i>
                        <span>
                            <strong>Address :</strong>
                            <br>
                            <?= htmlspecialchars($address ?? '') ?>
                        </span>
                    </li>

                    <li>
                        <i class="bi bi-telephone-fill"></i>
                        <span>
                            <strong>Phone No. :</strong>
                            <br>

                            <?php if (!empty($contactno)) { ?>
                                <a href="tel:<?= $contactno ?>">
                                    <?= $contactno ?>
                                </a>
                            <?php } ?>

                            <?php if (!empty($alternateno)) { ?>
                                <br>
                                <a href="tel:<?= $alternateno ?>">
                                    <?= $alternateno ?>
                                </a>
                            <?php } ?>

                        </span>
                    </li>

                    <li>
                        <i class="bi bi-envelope-fill"></i>
                        <span>
                            <strong>Email :</strong>
                            <br>

                            <?php if (!empty($emailid)) { ?>
                                <a href="mailto:<?= htmlspecialchars($emailid) ?>">
                                    <?= htmlspecialchars($emailid) ?>
                                </a>
                            <?php } ?>

                            <?php if (!empty($alternateemailid)) { ?>
                                <br>
                                <a href="mailto:<?= htmlspecialchars($alternateemailid) ?>">
                                    <?= htmlspecialchars($alternateemailid) ?>
                                </a>
                            <?php } ?>

                        </span>
                    </li>

                </ul>
            </div>

            
       
        <!-- Other Pages -->
        <div class="col-md-6 col-lg-3">
            <h3>Other Pages</h3>

            <div class="footer-pages">
                <ul>
                    <?php
                    $sql = "SELECT c_name, c_url FROM category WHERE status = 1 AND c_type = 1";
                    $result = mysqli_query($con, $sql);

                    if ($result && mysqli_num_rows($result) > 0) {

                        while ($row = mysqli_fetch_assoc($result)) {

                            $pageSlug = trim($row['c_url'] ?? '');

                            $pageLink = '';

                            // Home page: Open root URL without filename
                            if ($pageSlug === 'home') {

                                $pageLink = $path;

                            } else {

                                $pageRoute = $pageSlug;

                                // Check valid route and view file
                                if (
                                    $pageRoute &&
                                    file_exists(__DIR__ . '/../view/' . $pageRoute . '.php')
                                ) {
                                    $pageLink = rtrim($path, '/') . '/' . $pageRoute;
                                }
                            }
                    ?>

                            <li>
                                <?php if ($pageLink !== '') { ?>

                                    <a href="<?= htmlspecialchars($pageLink) ?>">
                                        <?= htmlspecialchars($row['c_name']) ?>
                                    </a>

                                <?php } else { ?>

                                    <?= htmlspecialchars($row['c_name']) ?>

                                <?php } ?>
                            </li>

                    <?php
                        }
                    }
                    ?>
                </ul>
            </div>
        </div>



            <!-- Our Services -->
           
        <!-- Our Services -->
        <div class="col-md-6 col-lg-3">
            <h3>Our Services</h3>

            <ul class="footer-services">

                <?php
                $sql = "SELECT sc_name, sc_url FROM sub_cat WHERE status = 1 ORDER BY id ASC";
                $result = mysqli_query($con, $sql);

                if ($result && mysqli_num_rows($result) > 0) {

                    while ($row = mysqli_fetch_assoc($result)) {

                        $serviceSlug = !empty($row['sc_url'])
                            ? trim($row['sc_url'])
                            : seo_friendly_url($row['sc_name']);
                ?>

                        <li>
                            <a href="<?= htmlspecialchars($path . 'specialities/' . $serviceSlug) ?>">
                                <?= htmlspecialchars($row['sc_name']) ?>
                            </a>
                        </li>

                <?php
                    }

                }
                ?>

            </ul>
        </div>

        </div>

    </div>

    <!-- Bottom Copyright Bar -->
    <div class="footer-bottom-bar">
        <div class="footer-bottom container">

            <p class="copyright-text">
                &copy; <?php echo date('Y'); ?> Dr. Paridhi Chaudhary. All Rights Reserved.
            </p>

            <p class="footer-credit">
                Designed &amp; Developed by
                <a href="https://promotionparadise.in"
                   target="_blank"
                   rel="noopener noreferrer">
                    Promotion Paradise
                </a>
            </p>

        </div>
    </div>

</footer>


<div class="float-contact">

    <?php if (!empty($contactno)) { ?>
        <a href="tel:<?= $contactno ?>"
           class="float-call"
           aria-label="Call us">
            <i class="bi bi-telephone-fill"></i>
        </a>
    <?php } ?>

    <?php if (!empty($whatsapp)) {
        $whatsappNumber = preg_replace('/[^0-9]/', '', $whatsapp);
    ?>
        <a href="https://wa.me/<?= htmlspecialchars($whatsappNumber) ?>"
           target="_blank"
           rel="noopener noreferrer"
           class="float-whatsapp"
           aria-label="Chat on WhatsApp">
            <i class="bi bi-whatsapp"></i>
        </a>
    <?php } ?>

</div>


<!-- Back to Top Button (right side) -->
<button type="button" class="back-to-top" aria-label="Back to top">
    <i class="bi bi-arrow-up"></i>
</button>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Slick Slider -->
<script src="<?= $path ?>slick/slick.min.js"></script>

<!-- Google reCAPTCHA -->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<!-- Main JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/glightbox/dist/js/glightbox.min.js"></script>
<script src="<?= $path ?>branch/js/script.js"></script>


</body>
</html>