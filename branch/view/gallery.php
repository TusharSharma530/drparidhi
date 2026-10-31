<?php include 'header.php'; ?>

<main>
    <section class="gallery-section container">

        <div class="gallery-grid">

            <?php
            $query = "SELECT file FROM gallery_imgs WHERE status = 1 ORDER BY id DESC";
            $result = mysqli_query($con, $query);

            if ($result && mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
            ?>

                    <div class="gallery-item">
                        <img src="<?= $path . htmlspecialchars($row['file'], ENT_QUOTES, 'UTF-8'); ?>"
                            alt="Gallery Image">
                    </div>

            <?php
                }
            } else {
                echo "<p>No gallery images available.</p>";
            }
            ?>

        </div>

    </section>
</main>

<?php include __DIR__ . '/footer.php'; ?>