<?php
require_once __DIR__ . '/../../manager/database/db.php';

include 'header.php';

$condId = isset($_GET['id']) ? (int)$_GET['id'] : 0;
?>

<main>

<?php if ($condId > 0) {

    $condSql = mysqli_query($con, "SELECT * FROM sub_cat WHERE id = $condId AND status = 1 LIMIT 1");

    if ($condSql && mysqli_num_rows($condSql) > 0) {
        $conditionData = mysqli_fetch_assoc($condSql);
?>

    <section class=" pregnancy-blog-page">
        <div class="container px-4">

            <div class="mb-4 pregnancy-blog-banner">
                <img
                    src="<?php echo !empty($conditionData['featured_img']) ? $path . $conditionData['featured_img'] : 'branch/assets/pregnancycare.webp'; ?>"
                    alt="<?php echo htmlspecialchars($conditionData['sc_name'], ENT_QUOTES, 'UTF-8'); ?>"
                    class="img-fluid w-100"
                    loading="lazy"
                >
            </div>

            <div class="blog-content">

                <h1 class="section-title">
                    <?php echo htmlspecialchars($conditionData['sc_name'], ENT_QUOTES, 'UTF-8'); ?>
                </h1>

                <!-- Detail Body (sc_desc column) -->
                <div class="care-desc">
                    <?php echo !empty($conditionData['sc_desc']) ? $conditionData['sc_desc'] : $conditionData['sdesc']; ?>
                </div>

                <button
                    type="button"
                    class="about-btn mt-3"
                    data-bs-toggle="modal"
                    data-bs-target="#appointmentModal">
                    Book an Appointment
                </button>

            </div>
        </div>
    </section>

<?php } else?>

<?php } else { ?>

    <!-- Specialities Listing -->
    <section class="conditions-section container">

        <div class="row g-4">

            <?php
            $conditionQuery = mysqli_query($con, "
                SELECT id, sc_name, sdesc, featured_img
                FROM sub_cat
                WHERE status = 1
                ORDER BY id ASC
            ");

            if ($conditionQuery && mysqli_num_rows($conditionQuery) > 0) {

                while ($conditionData = mysqli_fetch_assoc($conditionQuery)) {
            ?>

                    <div class="col-md-6 col-lg-3">

                        <a href="?id=<?php echo (int)$conditionData['id']; ?>" class="condition-card">

                            <?php if (!empty($conditionData['featured_img'])) { ?>

                                <img
                                    src="<?= htmlspecialchars(($path ?? '') . ($conditionData['featured_img'] ?? ''), ENT_QUOTES, 'UTF-8') ?>"
                                    alt="<?= htmlspecialchars($conditionData['sc_name'] ?? '', ENT_QUOTES, 'UTF-8') ?>"
                                    loading="lazy"
                                >

                            <?php } ?>

                            <h3 class="condition-name">
                                <?= htmlspecialchars($conditionData['sc_name'] ?? '', ENT_QUOTES, 'UTF-8') ?>
                            </h3>

                            <p class="condition-text">
                                <?= htmlspecialchars($conditionData['sdesc'] ?? '', ENT_QUOTES, 'UTF-8') ?>
                            </p>

                            <span class="read-more">Read More →</span>

                        </a>

                    </div>

            <?php
                }

            } else {
                echo '<p>No conditions available.</p>';
            }
            ?>

        </div>

    </section>

<?php } ?>

</main>

<?php include __DIR__ . '/footer.php'; ?>
