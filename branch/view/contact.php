 <?php include 'header.php'; ?>

<main>
   <section class="consult-section">
            <div class="container px-4">

                <!-- <div class="section-head">
                    <h2 class="section-title">
                        Your Health Deserves Priority. Don&rsquo;t Wait &mdash;
                        Schedule Your Consultation Now
                    </h2>
                </div> -->

                <div class="row g-4 align-items-start">

                    <!-- Left Side - Clinic / Hospital Info -->
                    <div class="col-lg-7">

                        <!-- Clinic / Hospital Tabs -->
                        <div class="consult-tabs" role="tablist">
                            <button type="button"
                                    class="consult-tab"
                                    data-consult-tab="clinic"
                                    role="tab"
                                    aria-selected="false">
                                Clinic
                            </button>
                        </div>

                        <!-- Contact Details -->
                        <ul class="consult-list">

                            <li class="consult-item">
                                <span class="consult-icon">
                                    <i class="bi bi-telephone"></i>
                                </span>
                                <span class="consult-detail">
                                    <span class="consult-label">Call now</span>
                                    <a class="consult-value" href="tel:+919286197331">
                                        +919286197331 ,+0121 4567142
                                    </a>
                                </span>
                            </li>

                            <li class="consult-item">
                                <span class="consult-icon">
                                    <i class="bi bi-envelope"></i>
                                </span>
                                <span class="consult-detail">
                                    <span class="consult-label">Email</span>
                                    <a class="consult-value" href="mailto:drparidhichaudhary@gmail.com">
                                        drparidhichaudhary@gmail.com
                                    </a>
                                </span>
                            </li>

                            <li class="consult-item">
                                <span class="consult-icon">
                                    <i class="bi bi-geo-alt"></i>
                                </span>
                                <span class="consult-detail">
                                    <span class="consult-label">Address</span>
                                    <span class="consult-value" id="consultAddress">
                                       Shop No,6,7,RPG Galleria 
                                       <br>GP Pocket,Gnaga Nagar,
                                       <br>Meerut,Uttar Pradesh-250001
                                    </span>
                                </span>
                            </li>

                            <li class="consult-item">
                                <span class="consult-icon">
                                    <i class="bi bi-clock"></i>
                                </span>
                                <span class="consult-detail">
                                    <span class="consult-label">Timings</span>
                                    <span class="consult-value">
                                        Mon &ndash; Sat: 11:00 AM To 08:00 PM
                                    </span>
                                </span>
                            </li>

                        </ul>

                        <!-- Location Button -->
                        <button type="button" class="consult-branch" id="consultBranch">
                            Meerut
                        </button>

                        <!-- Google Map -->
                        <div class="consult-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3489.3969264330626!2d77.74936437551455!3d29.00523667546334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c7b9d685b63ed%3A0x424008da6370361b!2sDr%20Paridhi%20Chaudhary!5e0!3m2!1sen!2sin!4v1792673184230!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="strict-origin-when-cross-origin"></iframe>
                        </div>

                    </div>

                    <!-- Right Side - Appointment Form -->
                    <div class="col-lg-5">
                        <div class="consult-form-card">

                            <form class="consult-form" id="consultForm" novalidate>

                                <div class="consult-field">
                                    <label for="consultName">Full Name</label>
                                    <div class="consult-input-wrap">
                                        <i class="bi bi-person"></i>
                                        <input type="text"
                                               class="consult-input"
                                               id="consultName"
                                               name="full_name"
                                               placeholder="Your Name"
                                               required>
                                    </div>
                                </div>

                                <div class="consult-field">
                                    <label for="consultEmail">Email Address</label>
                                    <div class="consult-input-wrap">
                                        <i class="bi bi-envelope"></i>
                                        <input type="email"
                                               class="consult-input"
                                               id="consultEmail"
                                               name="email"
                                               placeholder="Your Email"
                                               required>
                                    </div>
                                </div>

                                <div class="consult-field">
                                    <label for="consultPhone">Phone Number</label>
                                    <div class="consult-input-wrap">
                                        <i class="bi bi-telephone"></i>
                                        <input type="tel"
                                               class="consult-input"
                                               id="consultPhone"
                                               name="phone"
                                               placeholder="+91-12345-67890"
                                               required>
                                    </div>
                                </div>

                                <div class="consult-field">
                                    <label for="consultMessage">Message</label>
                                    <div class="consult-input-wrap consult-input-area">
                                        <i class="bi bi-chat-dots"></i>
                                        <textarea class="consult-input"
                                                  id="consultMessage"
                                                  name="message"
                                                  placeholder="Message"></textarea>
                                    </div>
                                </div>

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