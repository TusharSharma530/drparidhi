
<?php include 'header.php'; ?>

<main>
       <section class="gallery-section container">
     

            <div class="gallery-grid">
                <div class="gallery-item">
                    <img src="branch/assets/gallery1.jpeg" alt="Gallery Image 1">
                </div>
                <div class="gallery-item">
                    <img src="branch/assets/gallery2.jpeg" alt="Gallery Image 2">
                </div>
                <div class="gallery-item">
                    <img src="branch/assets/gallery3.jpeg" alt="Gallery Image 3">
                </div>
                <div class="gallery-item">
                    <img src="branch/assets/gallery4.jpeg" alt="Gallery Image 4">
                </div>
            </div>
        </section>

        <!-- Lightbox -->
        <div class="lightbox" id="lightbox">
            <button class="lightbox-close" id="lightboxClose"
                aria-label="Close image">&times;</button>
            <img src="" alt="Enlarged gallery image" id="lightboxImage">
        </div>

</main>

<?php include __DIR__ . '/footer.php'; ?>
