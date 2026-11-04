
document.addEventListener('DOMContentLoaded', function () {
    // MOBILE HAMBURGER SIDEBAR

    const mobileSidebar = document.getElementById('mobileSidebar');

    if (mobileSidebar) {

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

    // GALLERY LIGHTBOX


    const images = Array.prototype.slice.call(
        document.querySelectorAll('.gallery-section .gallery-item img')
    );

    if (images.length) {

        const lightbox = document.createElement('div');

        lightbox.className = 'lightbox';

        // Slick clones (infinite slider) ko sequence se hata do,
        // taaki same image baar baar na aaye
        const galleryImages = images.filter(function (img) {
            return !img.closest('.slick-cloned');
        });

        lightbox.innerHTML = `
            <button
                type="button"
                class="lightbox-close"
                aria-label="Close image"
            >&times;</button>

            <button
                type="button"
                class="lightbox-nav lightbox-prev"
                aria-label="Previous image"
            >&#10094;</button>

            <img src="" alt="Gallery Image">

            <button
                type="button"
                class="lightbox-nav lightbox-next"
                aria-label="Next image"
            >&#10095;</button>
        `;

        document.body.appendChild(lightbox);

        const lightboxImg = lightbox.querySelector('img');
        const prevBtn = lightbox.querySelector('.lightbox-prev');
        const nextBtn = lightbox.querySelector('.lightbox-next');

        let currentIndex = 0;

        // Ek hi image ho to arrows hide
        if (galleryImages.length < 2) {
            prevBtn.style.display = 'none';
            nextBtn.style.display = 'none';
        }

        function showImage(index) {
            currentIndex = (index + galleryImages.length) % galleryImages.length;

            const img = galleryImages[currentIndex];
            lightboxImg.src = img.src;
            lightboxImg.alt = img.alt;
        }

        function openLightbox(index) {
            showImage(index);
            lightbox.classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function closeLightbox() {
            lightbox.classList.remove('active');
            document.body.style.overflow = '';
        }

        function getImageIndex(img) {
            const index = galleryImages.indexOf(img);
            if (index !== -1) return index;

            // Clone image par click ho to uske original image ka index lo
            return galleryImages.findIndex(function (item) {
                return item.src === img.src;
            });
        }

        images.forEach(function (img) {

            img.addEventListener('click', function () {
                openLightbox(getImageIndex(img));
            });

        });

        prevBtn.addEventListener('click', function (event) {
            event.stopPropagation();
            showImage(currentIndex - 1);
        });

        nextBtn.addEventListener('click', function (event) {
            event.stopPropagation();
            showImage(currentIndex + 1);
        });

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
                return;
            }

            if (!lightbox.classList.contains('active')) return;

            if (event.key === 'ArrowLeft') {
                showImage(currentIndex - 1);
            } else if (event.key === 'ArrowRight') {
                showImage(currentIndex + 1);
            }
        });

    }


    // APPOINTMENT + CONSULTATION FORMS validation

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

    // RESET APPOINTMENT FORM WHEN MODAL CLOSES

    const appointmentForm = document.querySelector(
        '#appointmentModal form'
    );

    const appointmentModal = document.getElementById(
        'appointmentModal'
    );
    // REOPEN APPOINTMENT MODAL AFTER FORM SUBMISSION

const appointmentStatus = document.getElementById(
    'appointmentStatus'
);

if (appointmentStatus && appointmentStatus.value !== '') {

    const modalElement = document.getElementById('appointmentModal');

    if (modalElement && window.bootstrap) {

        const modalInstance = new bootstrap.Modal(modalElement);

        modalInstance.show();

    }

}

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
    // DATE PICKER

    const dateInput = document.getElementById('appointmentDate');

    if (dateInput) {

        dateInput.addEventListener('click', function () {

            if (typeof this.showPicker === 'function') {

                try {
                    this.showPicker();
                } catch (error) {
                    
                }

            }

        });

    }

    // BACK TO TOP BUTTON

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

    if (window.jQuery && jQuery.fn.slick) {

        jQuery('.slider').each(function () {

            var $el     = jQuery(this);
            var dSlides = parseInt($el.attr('data-slides-desktop'), 10);
            var mSlides = parseInt($el.attr('data-slides-mobile'), 10);

            if (isNaN(dSlides)) { dSlides = 1; }
            if (isNaN(mSlides)) { mSlides = 1; }

            $el.slick({
                slidesToShow: dSlides,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2500,
                dots: false,
                arrows: true,
                infinite: true,
                speed: 900,
                responsive: [
                    {
                        breakpoint: 992,
                        settings: {
                            slidesToShow: mSlides,
                            slidesToScroll: 1
                        }
                    }
                ]
            });

        });

    }

});
