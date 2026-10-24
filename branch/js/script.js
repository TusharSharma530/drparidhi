
document.addEventListener('DOMContentLoaded', function () {

    // =========================================
    // MOBILE HAMBURGER SIDEBAR
    // Bootstrap 5 Offcanvas
    // =========================================

    const mobileSidebar = document.getElementById('mobileSidebar');

    if (mobileSidebar) {

        // Close the sidebar after clicking a navigation link.
        // Normal link navigation continues as usual.
        const sidebarLinks = mobileSidebar.querySelectorAll(
            '.mobile-sidebar-nav .nav-link'
        );

        sidebarLinks.forEach(function (link) {
            link.addEventListener('click', function () {
                if (
                    window.bootstrap &&
                    window.bootstrap.Offcanvas
                ) {
                    const sidebarInstance =
                        window.bootstrap.Offcanvas.getInstance(mobileSidebar);

                    if (sidebarInstance) {
                        sidebarInstance.hide();
                    }
                }
            });
        });

        // Close the sidebar before opening the appointment modal.
        const sidebarAppointmentButton = mobileSidebar.querySelector(
            '[data-bs-target="#appointmentModal"]'
        );

        if (sidebarAppointmentButton) {
            sidebarAppointmentButton.addEventListener('click', function () {

                if (
                    window.bootstrap &&
                    window.bootstrap.Offcanvas
                ) {
                    const sidebarInstance =
                        window.bootstrap.Offcanvas.getInstance(mobileSidebar);

                    if (sidebarInstance) {
                        sidebarInstance.hide();
                    }
                }

            });
        }

    }


    // =========================================
    // GALLERY LIGHTBOX
    // =========================================

    const images = document.querySelectorAll(
        '.gallery-section .gallery-item img'
    );

    if (images.length) {

        const lightbox = document.createElement('div');

        lightbox.className = 'lightbox';

        lightbox.innerHTML = `
            <button
                type="button"
                class="lightbox-close"
                aria-label="Close image"
            >&times;</button>

            <img src="" alt="Gallery Image">
        `;

        document.body.appendChild(lightbox);

        const lightboxImg = lightbox.querySelector('img');

        images.forEach(function (img) {

            img.addEventListener('click', function () {

                lightboxImg.src = img.src;
                lightboxImg.alt = img.alt;

                lightbox.classList.add('active');
                document.body.style.overflow = 'hidden';

            });

        });

        function closeLightbox() {
            lightbox.classList.remove('active');
            document.body.style.overflow = '';
        }

        lightbox.querySelector('.lightbox-close')
            .addEventListener('click', closeLightbox);

        lightbox.addEventListener('click', function (event) {
            if (event.target === lightbox) {
                closeLightbox();
            }
        });

        document.addEventListener('keydown', function (event) {
            if (event.key === 'Escape') {
                closeLightbox();
            }
        });

    }


    // =========================================
    // SHARED VALIDATION
    // APPOINTMENT + CONSULTATION FORMS
    // =========================================

    const forms = document.querySelectorAll(
        '#appointmentModal form, #consultForm'
    );

    forms.forEach(function (form) {

        const name = form.querySelector(
            '#appointmentName, #consultName'
        );

        const phone = form.querySelector(
            '#appointmentPhone, #consultPhone'
        );

        const email = form.querySelector(
            '#appointmentEmail, #consultEmail'
        );

        if (!name || !phone || !email) {
            return;
        }

        // Name: letters and spaces only
        name.addEventListener('input', function () {
            this.value = this.value.replace(/[^a-zA-Z ]/g, '');
        });

        // Phone: maximum 10 digits
        phone.addEventListener('input', function () {
            this.value = this.value.replace(/\D/g, '').slice(0, 10);
        });

        // Validate when the form is submitted
        form.addEventListener('submit', function (event) {

            name.value = name.value.trim();

            const validName =
                /^[a-zA-Z ]{3,60}$/.test(name.value);

            const validPhone =
                /^[6-9][0-9]{9}$/.test(phone.value);

            const validEmail =
                email.validity.valid;

            if (!validName || !validPhone || !validEmail) {

                event.preventDefault();

                alert(
                    'Please enter a valid name, mobile number, and email.'
                );

                if (!validName) {
                    name.focus();
                } else if (!validPhone) {
                    phone.focus();
                } else {
                    email.focus();
                }

            }

        });

    });


    // =========================================
    // RESET APPOINTMENT FORM WHEN MODAL CLOSES
    // =========================================

    const appointmentForm = document.querySelector(
        '#appointmentModal form'
    );

    const appointmentModal = document.getElementById(
        'appointmentModal'
    );

    if (appointmentForm && appointmentModal) {

        appointmentModal.addEventListener(
            'hidden.bs.modal',
            function () {

                appointmentForm.reset();

                appointmentForm.classList.remove('was-validated');

                appointmentForm.querySelectorAll(
                    'input, textarea'
                ).forEach(function (field) {
                    field.setCustomValidity('');
                });

            }
        );

    }


    // =========================================
    // DATE PICKER
    // Open when clicking the date field
    // =========================================

    const dateInput = document.getElementById('appointmentDate');

    if (dateInput) {

        dateInput.addEventListener('click', function () {

            if (typeof this.showPicker === 'function') {

                try {
                    this.showPicker();
                } catch (error) {
                    // Browser handles the date picker automatically.
                }

            }

        });

    }


    // =========================================
    // BACK TO TOP BUTTON
    // =========================================

    const backToTop = document.querySelector('.back-to-top');

    if (backToTop) {

        function updateBackToTopVisibility() {
            backToTop.classList.toggle(
                'show',
                window.scrollY > 300
            );
        }

        window.addEventListener(
            'scroll',
            updateBackToTopVisibility,
            { passive: true }
        );

        // Set the initial visibility on page load.
        updateBackToTopVisibility();

        backToTop.addEventListener('click', function (event) {

            event.preventDefault();

            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });

        });

    }

});
