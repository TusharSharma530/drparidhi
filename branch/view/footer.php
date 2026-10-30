
<!-- Footer Section -->
<footer class="site-footer">

    <div class="container">

        <!-- Top Row: Logo + Follow Us -->
       
        <div class="footer-top">

            <a href="default" class="footer-doctor-brand">

                <span class="footer-doctor-logo">
                    <img
                        src="<?= htmlspecialchars(($path ?? '') . ($logo ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                        alt="<?= htmlspecialchars($websitename ?? '', ENT_QUOTES, 'UTF-8') ?> Logo"
                    >
                </span>

                <span class="footer-doctor-info">

                    <span class="footer-doctor-name">
                        <?= htmlspecialchars($websitename ?? '', ENT_QUOTES, 'UTF-8') ?>
                    </span>

                <span class="footer-doctor-tagline">
                        <?= htmlspecialchars($headercenterline ?? '', ENT_QUOTES, 'UTF-8') ?>
                    </span>
                </span>
            </a>

            <div class="footer-follow">

                <span class="footer-follow-title">Follow Us On</span>

                <div class="footer-social-icons">

                    <?php if (!empty($youtube)) { ?>
                        <a href="<?= htmlspecialchars($youtube, ENT_QUOTES, 'UTF-8') ?>"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="social-youtube"
                        aria-label="YouTube">
                            <i class="bi bi-youtube"></i>
                        </a>
                    <?php } ?>

                    <?php if (!empty($instagram)) { ?>
                        <a href="<?= htmlspecialchars($instagram, ENT_QUOTES, 'UTF-8') ?>"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="social-instagram"
                        aria-label="Instagram">
                            <i class="bi bi-instagram"></i>
                        </a>
                    <?php } ?>

                    <?php if (!empty($facebook)) { ?>
                        <a href="<?= htmlspecialchars($facebook, ENT_QUOTES, 'UTF-8') ?>"
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

            <!-- About Us -->
            <!-- About Us -->
            <div class="col-md-6 col-lg-3">
                <h3>About Us</h3>

                <p>
                    <?= htmlspecialchars($footerdesc ?? '', ENT_QUOTES, 'UTF-8') ?>
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
                            <?= htmlspecialchars($address ?? '', ENT_QUOTES, 'UTF-8') ?>
                        </span>
                    </li>

                    <li>
                        <i class="bi bi-telephone-fill"></i>
                        <span>
                            <strong>Phone No. :</strong>
                            <br>

                            <?php if (!empty($contactno)) { ?>
                                <a href="tel:<?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>">
                                    <?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>
                                </a>
                            <?php } ?>

                            <?php if (!empty($alternateno)) { ?>
                                <br>
                                <a href="tel:<?= htmlspecialchars($alternateno, ENT_QUOTES, 'UTF-8') ?>">
                                    <?= htmlspecialchars($alternateno, ENT_QUOTES, 'UTF-8') ?>
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
                                <a href="mailto:<?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>">
                                    <?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>
                                </a>
                            <?php } ?>

                            <?php if (!empty($alternateemailid)) { ?>
                                <br>
                                <a href="mailto:<?= htmlspecialchars($alternateemailid, ENT_QUOTES, 'UTF-8') ?>">
                                    <?= htmlspecialchars($alternateemailid, ENT_QUOTES, 'UTF-8') ?>
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
                    $sql = "SELECT c_name FROM category WHERE status = 1 AND c_type = 1";
                    $result = mysqli_query($con, $sql);

                    if ($result && mysqli_num_rows($result) > 0) {

                        while ($row = mysqli_fetch_assoc($result)) {
                    ?>

                            <li>
                                <?= htmlspecialchars($row['c_name'], ENT_QUOTES, 'UTF-8') ?>
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
                $sql = "SELECT sc_name FROM sub_cat WHERE status = 1 ORDER BY id ASC";
                $result = mysqli_query($con, $sql);

                if ($result && mysqli_num_rows($result) > 0) {

                    while ($row = mysqli_fetch_assoc($result)) {
                ?>

                        <li>
                            <?= htmlspecialchars($row['sc_name'], ENT_QUOTES, 'UTF-8') ?>
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
        <a href="tel:<?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>"
           class="float-call"
           aria-label="Call us">
            <i class="bi bi-telephone-fill"></i>
        </a>
    <?php } ?>

    <?php if (!empty($whatsapp)) {
        $whatsappNumber = preg_replace('/[^0-9]/', '', $whatsapp);
    ?>
        <a href="https://wa.me/<?= htmlspecialchars($whatsappNumber, ENT_QUOTES, 'UTF-8') ?>"
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
