<?php include 'header.php'; ?>

<main>
    <section class="consult-section">
        <div class="container">
            <div class="row g-4 align-items-start">

                <!-- Clinic Information -->
                <div class="col-lg-7">

                    <div class="consult-tabs" role="tablist">
                        <button type="button"
                                class="consult-tab"
                                data-consult-tab="clinic"
                                role="tab"
                                aria-selected="true">
                            Clinic
                        </button>
                    </div>

                    <ul class="consult-list">

                        <!-- Contact Number -->
                        <?php if (!empty($contactno)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-telephone"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Call now</span>

                                <a class="consult-value"
                                   href="tel:<?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>">

                                    <?= htmlspecialchars($contactno, ENT_QUOTES, 'UTF-8') ?>

                                    <?php if (!empty($alternateno)) { ?>
                                        , <?= htmlspecialchars($alternateno, ENT_QUOTES, 'UTF-8') ?>
                                    <?php } ?>

                                </a>
                            </span>
                        </li>
                        <?php } ?>

                        <!-- Email -->
                        <?php if (!empty($emailid)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-envelope"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Email</span>

                                <a class="consult-value"
                                   href="mailto:<?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>">

                                    <?= htmlspecialchars($emailid, ENT_QUOTES, 'UTF-8') ?>

                                </a>
                            </span>
                        </li>
                        <?php } ?>

                        <!-- Address -->
                        <?php if (!empty($address)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-geo-alt"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Address</span>

                                <span class="consult-value" id="consultAddress">
                                    <?= nl2br(htmlspecialchars($address, ENT_QUOTES, 'UTF-8')) ?>
                                </span>
                            </span>
                        </li>
                        <?php } ?>

                        <!-- Reception Timings -->
                        <?php if (!empty($time)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-clock"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Timings</span>

                                <span class="consult-value">
                                    <?= htmlspecialchars($time, ENT_QUOTES, 'UTF-8') ?>
                                </span>
                            </span>
                        </li>
                        <?php } ?>

                        <!-- Working Days -->
                        <?php if (!empty($working_days)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-calendar-check"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Working Days</span>

                                <span class="consult-value">
                                    <?= htmlspecialchars($working_days, ENT_QUOTES, 'UTF-8') ?>
                                </span>
                            </span>
                        </li>
                        <?php } ?>

                        <!-- Closed Days -->
                        <?php if (!empty($closed_days)) { ?>
                        <li class="consult-item">
                            <span class="consult-icon">
                                <i class="bi bi-calendar-x"></i>
                            </span>

                            <span class="consult-detail">
                                <span class="consult-label">Closed Days</span>

                                <span class="consult-value">
                                    <?= htmlspecialchars($closed_days, ENT_QUOTES, 'UTF-8') ?>
                                </span>
                            </span>
                        </li>
                        <?php } ?>

                    </ul>

                    <!-- Clinic Branch -->
                    <button type="button" class="consult-branch" id="consultBranch">
                        Clinic
                    </button>

                    <!-- Google Maps -->
                    <?php if (!empty($mapiframe)) { ?>
                    <div class="consult-map">

                        <iframe
                            src="<?= htmlspecialchars($mapiframe, ENT_QUOTES, 'UTF-8') ?>"
                            width="100%"
                            height="450"
                            style="border:0;"
                            allowfullscreen
                            loading="lazy"
                            referrerpolicy="strict-origin-when-cross-origin">
                        </iframe>

                        <?php if (!empty($address)) { ?>
                        <div class="consult-map-address">
                            <?= nl2br(htmlspecialchars($address, ENT_QUOTES, 'UTF-8')) ?>
                        </div>
                        <?php } ?>

                    </div>
                    <?php } ?>

                </div>


                <!-- Consultation Form -->
                <div class="col-lg-5">
                    <div class="consult-form-card">

                        <form class="consult-form"
                              id="consultForm"
                              action="../view/appointment.php"
                              method="POST">

                            <!-- Full Name -->
                            <div class="consult-field">
                                <label for="consultName">Full Name</label>

                                <div class="consult-input-wrap">
                                    <i class="bi bi-person"></i>

                                    <input
                                        type="text"
                                        class="consult-input"
                                        id="consultName"
                                        name="full_name"
                                        placeholder="Your Name"
                                        pattern="[A-Za-z]+( [A-Za-z]+)*"
                                        minlength="3"
                                        maxlength="60"
                                        required>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="consult-field">
                                <label for="consultEmail">Email Address</label>

                                <div class="consult-input-wrap">
                                    <i class="bi bi-envelope"></i>

                                    <input
                                        type="email"
                                        class="consult-input"
                                        id="consultEmail"
                                        name="email"
                                        placeholder="Your Email"
                                        maxlength="254">
                                </div>
                            </div>

                            <!-- Phone -->
                            <div class="consult-field">
                                <label for="consultPhone">Phone Number</label>

                                <div class="consult-input-wrap">
                                    <i class="bi bi-telephone"></i>

                                    <input
                                        type="tel"
                                        class="consult-input"
                                        id="consultPhone"
                                        name="phone"
                                        placeholder="10-digit mobile number"
                                        pattern="[6-9][0-9]{9}"
                                        maxlength="10"
                                        inputmode="numeric"
                                        required>
                                </div>
                            </div>

                            <!-- Message -->
                            <div class="consult-field">
                                <label for="consultMessage">Message</label>

                                <div class="consult-input-wrap consult-input-area">
                                    <i class="bi bi-chat-dots"></i>

                                    <textarea
                                        class="consult-input"
                                        id="consultMessage"
                                        name="message"
                                        rows="4"
                                        placeholder="Message"></textarea>
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit" class="consult-submit">
                                Confirm Appointment
                            </button>

                            <p class="consult-msg" id="consultMsg"></p>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

<?php include __DIR__ . '/footer.php'; ?>
