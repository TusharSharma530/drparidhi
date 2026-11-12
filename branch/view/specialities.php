<?php
require_once __DIR__ . '/../../index.php';

$typeSegments = explode('/', trim($_GET['type'] ?? '', '/'));
$condSlug = $typeSegments[1] ?? '';

$conditionData = null;

if ($condSlug !== '') {

    $condSql = mysqli_query($con, "SELECT * FROM sub_cat WHERE status = 1");

    if ($condSql) {
        while ($row = mysqli_fetch_assoc($condSql)) {

            $slug = !empty($row['sc_url'])
                ? trim($row['sc_url'])
                : seo_friendly_url($row['sc_name']);

            if ($condSlug === $slug) {
                $conditionData = $row;
                break;
            }
        }
    }
}

?>
<main>


<?php if (!empty($conditionData)) { ?>

<section class="pregnancy-blog-page">
    <div class="container px-4">
        <div class="row g-4 speciality-detail-row">

            <!-- LEFT SIDE: OTHER SPECIALITIES -->
            <div class="col-lg-3 other-specialities-col">
                <div class="other-specialities">

                    <h3 class="other-specialities-title">
                        Other Specialities
                    </h3>

                    <?php
                    $otherQuery = mysqli_query($con, "
                        SELECT id, sc_name, sc_url
                        FROM sub_cat
                        WHERE status = 1
                        ORDER BY id ASC
                    ");

                    if ($otherQuery) {
                        while ($other = mysqli_fetch_assoc($otherQuery)) {

                            $otherSlug = !empty($other['sc_url'])
                                ? trim($other['sc_url'])
                                : seo_friendly_url($other['sc_name']);

                            $activeSlug = !empty($conditionData['sc_url'])
                                ? trim($conditionData['sc_url'])
                                : seo_friendly_url($conditionData['sc_name']);

                            if ($otherSlug === $activeSlug) {
                                continue;
                            }
                    ?>

                        <a href="<?= htmlspecialchars(
                            $path . 'specialities/' . $otherSlug
                          
                        ) ?>" class="other-speciality-link">

                            <?= htmlspecialchars(
                                $other['sc_name']
                            ) ?>

                            <span>→</span>

                        </a>

                    <?php
                        }
                    }
                    ?>

                </div>
            </div>


            <!-- RIGHT SIDE: SELECTED SPECIALITY DETAILS -->
            <div class="col-lg-9 speciality-detail-main">

                <div class="pregnancy-blog-banner mb-4">

                    <img
                        src="<?= !empty($conditionData['featured_img'])
                            ? htmlspecialchars($path . $conditionData['featured_img'])
                            : htmlspecialchars($path . 'branch/assets/pregnancycare.webp') ?>"
                        alt="<?= htmlspecialchars($conditionData['sc_name']) ?>"
                        class="img-fluid w-100"
                        loading="lazy"
                    >

                </div>

                <div class="blog-content">

                    <h1 class="section-title">
                        <?= htmlspecialchars(
                            $conditionData['sc_name']
                        ) ?>
                    </h1>

                    <div class="care-desc">
                        <?= !empty($conditionData['sc_desc'])
                            ? $conditionData['sc_desc']
                            : $conditionData['sdesc'] ?>
                    </div>

                </div>

            </div>

            <!-- BOOK APPOINTMENT (mobile: "Other Specialities" card se turant pehle) -->
            <div class="col-lg-9 offset-lg-3 speciality-appointment-col">
                <button
                    type="button"
                    class="about-btn"
                    data-bs-toggle="modal"
                    data-bs-target="#appointmentModal">

                    Book an Appointment

                </button>
            </div>

        </div>
    </div>
</section>

<?php }
 else { ?>

    <!-- Specialities Listing -->
    <section class="conditions-section container">

        <div class="row g-4">

            <?php
            $conditionQuery = mysqli_query($con, "
                SELECT id, sc_name, sc_url, sdesc, featured_img
                FROM sub_cat
                WHERE status = 1
                ORDER BY id ASC
            ");

            if ($conditionQuery && mysqli_num_rows($conditionQuery) > 0) {

                while ($conditionData = mysqli_fetch_assoc($conditionQuery)) {

                    $cardSlug = !empty($conditionData['sc_url'])
                        ? trim($conditionData['sc_url'])
                        : seo_friendly_url($conditionData['sc_name']);
            ?>

                    <div class="col-md-6 col-lg-3">

                        <a href="<?= htmlspecialchars($path . 'specialities/' . $cardSlug) ?>" class="condition-card">

                            <?php if (!empty($conditionData['featured_img'])) { ?>

                                <img
                                    src="<?= htmlspecialchars(($path ?? '') . ($conditionData['featured_img'] ?? '')) ?>"
                                    alt="<?= htmlspecialchars($conditionData['sc_name'] ?? '') ?>"
                                    loading="lazy"
                                >

                            <?php } ?>

                            <h3 class="condition-name">
                                <?= htmlspecialchars($conditionData['sc_name'] ?? '') ?>
                            </h3>

                            <p class="condition-text">
                                <?= htmlspecialchars($conditionData['sdesc'] ?? '') ?>
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
