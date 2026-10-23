document.addEventListener('DOMContentLoaded', function () {

    /* ---------- Clinic / Hospital Tabs ---------- */

    var consultTabs = document.querySelectorAll('.consult-tab');
    var consultAddress = document.getElementById('consultAddress');
    var consultBranch = document.getElementById('consultBranch');
    var consultMap = document.getElementById('consultMap');
    var consultMapLink = document.getElementById('consultMapLink');

    var consultData = {
        clinic: {
            address: 'B-19, Hil apartments, sector-13, Rohini, Delhi',
            branch: 'Rohini',
            mapQuery: 'B-19+Hil+Apartments+Sector+13+Rohini+Delhi'
        },
        hospital: {
            address: 'Cloudnine Hospital Community Centre, Plot no 2, Sector 3, Sector 3A, Rohini, Delhi, 110085',
            branch: 'Punjabi Bagh',
            mapQuery: 'Cloudnine+Hospital+Rohini+Delhi'
        }
    };

    consultTabs.forEach(function (tab) {
        tab.addEventListener('click', function () {

            var key = tab.getAttribute('data-consult-tab');
            var data = consultData[key];

            if (!data) return;

            consultTabs.forEach(function (t) {
                t.classList.remove('active');
                t.setAttribute('aria-selected', 'false');
            });

            tab.classList.add('active');
            tab.setAttribute('aria-selected', 'true');

            consultAddress.textContent = data.address;
            consultBranch.textContent = data.branch;
            consultMap.src = 'https://www.google.com/maps?q=' + data.mapQuery + '&z=15&output=embed';
            consultMapLink.href = 'https://www.google.com/maps/search/?api=1&query=' + data.mapQuery;
        });
    });

    /* ---------- Form Validation ---------- */

    var consultForm = document.getElementById('consultForm');
    var consultMsg = document.getElementById('consultMsg');

    if (!consultForm) return;

    consultForm.addEventListener('submit', function (e) {
        e.preventDefault();

        var name = document.getElementById('consultName').value.trim();
        var email = document.getElementById('consultEmail').value.trim();
        var phone = document.getElementById('consultPhone').value.trim();

        consultMsg.classList.remove('success', 'error', 'show');

        function showError(message) {
            consultMsg.textContent = message;
            consultMsg.classList.add('error', 'show');
        }

        if (name === '') return showError('Please enter your full name.');
        if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) return showError('Please enter a valid email address.');
        if (phone === '') return showError('Please enter your phone number.');

        consultMsg.textContent = 'Thank you! Your appointment request has been sent. We will contact you shortly.';
        consultMsg.classList.add('success', 'show');

        consultForm.reset();
    });

});

/* ---------- Back to Top Button ---------- */

document.addEventListener('DOMContentLoaded', function () {

    var backToTop = document.querySelector('.back-to-top');

    if (!backToTop) return;

    window.addEventListener('scroll', function () {
        backToTop.classList.toggle('show', window.scrollY > 300);
    });

    backToTop.addEventListener('click', function () {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });

});

/* ---------- Gallery Lightbox ---------- */

document.addEventListener('DOMContentLoaded', function () {

    var galleryImages = document.querySelectorAll(
        '.gallery-section .gallery-item img'
    );

    if (!galleryImages.length) return;

    var lightbox = document.createElement('div');
    lightbox.className = 'lightbox';

    lightbox.innerHTML = `
        <button class="lightbox-close" aria-label="Close image">&times;</button>
        <img src="" alt="Gallery Image">
    `;

    document.body.appendChild(lightbox);

    var lightboxImg = lightbox.querySelector('img');
    var closeBtn = lightbox.querySelector('.lightbox-close');

    // Open image
    galleryImages.forEach(function (img) {
        img.addEventListener('click', function () {
            lightboxImg.src = img.src;
            lightboxImg.alt = img.alt;
            lightbox.classList.add('active');
            document.body.style.overflow = 'hidden';
        });
    });

    // Close lightbox
    function closeLightbox() {
        lightbox.classList.remove('active');
        document.body.style.overflow = '';
    }

    closeBtn.addEventListener('click', closeLightbox);

    // Close on background click
    lightbox.addEventListener('click', function (e) {
        if (e.target === lightbox) {
            closeLightbox();
        }
    });

    // Close with Escape key
    document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape') {
            closeLightbox();
        }
    });

});
