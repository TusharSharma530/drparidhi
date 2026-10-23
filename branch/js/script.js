
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
