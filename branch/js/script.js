
document.addEventListener('DOMContentLoaded', function () {

    // Gallery Lightbox
    const images = document.querySelectorAll('.gallery-section .gallery-item img');

    if (images.length) {
        const lightbox = document.createElement('div');
        lightbox.className = 'lightbox';
        lightbox.innerHTML = `
            <button class="lightbox-close" aria-label="Close image">&times;</button>
            <img src="" alt="Gallery Image">
        `;
        document.body.appendChild(lightbox);

        const lightboxImg = lightbox.querySelector('img');

        images.forEach(img => {
            img.addEventListener('click', () => {
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

        lightbox.addEventListener('click', e => {
            if (e.target === lightbox) closeLightbox();
        });

        document.addEventListener('keydown', e => {
            if (e.key === 'Escape') closeLightbox();
        });
    }


    // Shared Validation: Appointment + Consultation Forms
    const forms = document.querySelectorAll(
        '#appointmentModal form, #consultForm'
    );

    forms.forEach(form => {
        const name = form.querySelector(
            '#appointmentName, #consultName'
        );
        const phone = form.querySelector(
            '#appointmentPhone, #consultPhone'
        );
        const email = form.querySelector(
            '#appointmentEmail, #consultEmail'
        );

        if (!name || !phone || !email) return;

        // Name: letters and spaces only
        name.addEventListener('input', function () {
            this.value = this.value.replace(/[^a-zA-Z ]/g, '');
        });

        // Mobile: 10 digits, starting from 6 to 9
        phone.addEventListener('input', function () {
            this.value = this.value.replace(/\D/g, '').slice(0, 10);
        });

        // Validate on submit
        form.addEventListener('submit', function (e) {
            name.value = name.value.trim();

            if (!/^[a-zA-Z ]{3,60}$/.test(name.value) ||
                !/^[6-9][0-9]{9}$/.test(phone.value) ||
                !email.validity.valid) {
                e.preventDefault();
                alert('Please enter a valid name, mobile number, and email.');
            }
        });
    });


    // Reset Appointment Form When Modal Closes
    const appointmentForm = document.querySelector('#appointmentModal form');
    const modal = document.getElementById('appointmentModal');

    if (appointmentForm && modal) {
        modal.addEventListener('hidden.bs.modal', function () {
            appointmentForm.reset();
            appointmentForm.classList.remove('was-validated');

            appointmentForm.querySelectorAll('input, textarea').forEach(field => {
                field.setCustomValidity('');
            });
        });
    }


    // Date Picker: Open on clicking anywhere in the field
    const dateInput = document.getElementById('appointmentDate');

    if (dateInput) {
        dateInput.addEventListener('click', function () {
            if (typeof this.showPicker === 'function') {
                try {
                    this.showPicker();
                } catch (error) {
                    // Browser handles the date picker automatically
                }
            }
        });
    }

});


/* ---------- Back to Top Button ----------
   (d4834fd commit me ye JS galti se delete ho gayi thi - wapas restore ki,
   warna .back-to-top par .show class kabhi add nahi hoti aur button
   opacity: 0 / visibility: hidden hi rehta tha) */
document.addEventListener('DOMContentLoaded', function () {

    const backToTop = document.querySelector('.back-to-top');

    if (!backToTop) return;

    window.addEventListener('scroll', function () {
        backToTop.classList.toggle('show', window.scrollY > 300);
    });

    backToTop.addEventListener('click', function () {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });

});
