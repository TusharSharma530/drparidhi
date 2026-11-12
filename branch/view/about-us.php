
<?php
include_once __DIR__ . '/../../index.php';
?>

<?php
// Fetch About Us content from category table
$aboutQuery = mysqli_query($con, "
    SELECT c_name, c_desc, featured_img
    FROM category
    WHERE id = 101 AND status = 1
    LIMIT 1
");

$aboutData = mysqli_fetch_assoc($aboutQuery);
?>

<main>

    <!-- About Doctor Section -->
    <section class="about-doctor-section container">

        <div class="about-row">

            <!-- Left Content -->
            <div class="about-left">

                <span class="section-tag">
                    Dr. Paridhi Chaudhary
                </span>

                <h2 class="section-title">
                    <?php
                    $nameParts = explode('|', $aboutData['c_name'] ?? '');

                    echo htmlspecialchars(trim($nameParts[0]), ENT_QUOTES, 'UTF-8');

                    if (!empty($nameParts[1])) {
                        echo '<br>' . htmlspecialchars(trim($nameParts[1]), ENT_QUOTES, 'UTF-8');
                    }
                    ?>
                </h2>

                <?php if (!empty($aboutData['c_desc'])) { ?>
                    <div class="section-text">
                        <?= $aboutData['c_desc'] ?>
                    </div>
                <?php } ?>

                <div class="about-actions">

                    <?php if (!empty($contactno)) { ?>

                        <a class="about-helpline"
                           href="tel:<?= htmlspecialchars($contactno) ?>">

                            Helpline!
                            <?= htmlspecialchars($contactno) ?>

                            <?php if (!empty($alternateno)) { ?>
                                , <?= htmlspecialchars($alternateno) ?>
                            <?php } ?>

                        </a>

                    <?php } ?>

                </div>

            </div>

            <!-- Right Side Image -->
            <div class="why-choose">

                <?php if (!empty($aboutData['featured_img'])) { ?>

                    <img
                        src="<?= htmlspecialchars(($path ?? '') . $aboutData['featured_img']) ?>"
                        alt="Dr. Paridhi Chaudhary - Gynecologist in Meerut"
                        loading="lazy"
                    >

                <?php } ?>

            </div>

        </div>

    </section>

</main>
