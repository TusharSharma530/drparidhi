
document.addEventListener('DOMContentLoaded', function () {

    // MOBILE SIDEBAR
    const mobileSidebar = document.getElementById('mobileSidebar');

    if (mobileSidebar) {
        mobileSidebar.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', () => {
                bootstrap.Offcanvas.getInstance(mobileSidebar)?.hide();
            });
        });
    }

    // GALLERY LIGHTBOX
    if (typeof GLightbox !== 'undefined') {
        GLightbox({
            selector: '.glightbox',
            loop: true,
            touchNavigation: true,
            openEffect: 'zoom',
            closeEffect: 'zoom',
            slideEffect: 'slide'
        });
    }

    // APPOINTMENT + CONSULTATION FORM VALIDATION
    document.querySelectorAll('#appointmentModal form, #consultForm').forEach(form => {

        const name = form.querySelector('#appointmentName, #consultName');
        const phone = form.querySelector('#appointmentPhone, #consultPhone');

        name?.addEventListener('input', function () {
            this.value = this.value.replace(/[^a-zA-Z ]/g, '');
        });

        phone?.addEventListener('input', function () {
            this.value = this.value.replace(/\D/g, '').slice(0, 10);
        });

    });

    // RESET APPOINTMENT FORM
    const appointmentModal = document.getElementById('appointmentModal');

    appointmentModal?.addEventListener('hidden.bs.modal', function () {
        this.querySelector('form')?.reset();
    });

    // REOPEN MODAL AFTER SUBMISSION
    const status = document.getElementById('appointmentStatus');

    if (status?.value && appointmentModal && window.bootstrap) {
        bootstrap.Modal.getOrCreateInstance(appointmentModal).show();
    }

    // DATE PICKER
    const dateInput = document.getElementById('appointmentDate');

    dateInput?.addEventListener('click', function () {
        if (typeof this.showPicker === 'function') {
            this.showPicker();
        }
    });

    // BACK TO TOP
    const backToTop = document.querySelector('.back-to-top');

    if (backToTop) {

        const updateVisibility = () => {
            backToTop.classList.toggle('show', window.scrollY > 300);
        };

        window.addEventListener('scroll', updateVisibility, { passive: true });

        updateVisibility();

        backToTop.addEventListener('click', () => {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });
    }

    // SLICK SLIDER
    if (window.jQuery && jQuery.fn.slick) {

        jQuery('.slider').each(function () {

            const $el = jQuery(this);

            $el.slick({
                slidesToShow: parseInt($el.attr('data-slides-desktop'), 10) || 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 2500,
                dots: false,
                arrows: true,
                infinite: true,
                speed: 900,
                responsive: [{
                    breakpoint: 992,
                    settings: {
                        slidesToShow: parseInt($el.attr('data-slides-mobile'), 10) || 1
                    }
                }]
            });

        });
    }

});
