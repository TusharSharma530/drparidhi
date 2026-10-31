
<?php
include 'header.php';

$blogId = isset($_GET['id']) ? (int)$_GET['id'] : 0;
?>

<main>

<?php if ($blogId > 0) {

    $blogSql = mysqli_query($con, "SELECT * FROM blogs WHERE id = $blogId AND status = 1 LIMIT 1");

    if ($blogSql && mysqli_num_rows($blogSql) > 0) {
        $blog = mysqli_fetch_assoc($blogSql);
?>

    <!-- Blog Detail -->
    <section class=" pregnancy-blog-page">
        <div class="container px-4">

            <div class="mb-4 pregnancy-blog-banner">
                <img
                    src="<?php echo !empty($blog['file']) ? $path . $blog['file'] : 'branch/assets/blog1.webp'; ?>"
                    alt="<?php echo htmlspecialchars($blog['title'], ENT_QUOTES, 'UTF-8'); ?>"
                    class="img-fluid w-100"
                    loading="lazy"
                >
            </div>

            <div class="blog-content">

                <h1 class="section-title">
                    <?php echo htmlspecialchars($blog['title'], ENT_QUOTES, 'UTF-8'); ?>
                </h1>

                <div class="blog-desc">
                    <?php echo !empty($blog['desc']) ? $blog['desc'] : $blog['sdesc']; ?>
                </div>

            </div>
        </div>
    </section>

<?php } else  ?>

<?php } else { ?>

    <!-- Blog Listing -->
    <section class=" blogs-list-page">
        <div class="container">

            <div class="row g-4">

                <?php
                $sql = "SELECT * FROM blogs WHERE status = 1 ORDER BY id DESC";
                $result = mysqli_query($con, $sql);

                if ($result && mysqli_num_rows($result) > 0) {

                    $tags = ['Pregnancy Care', "Women's Health", 'PCOS / PCOD'];
                    $i = 0;

                    while ($blog = mysqli_fetch_assoc($result)) {
                ?>

                    <div class="col-md-6 col-lg-4">

                       <a href="?id=<?php echo (int)$blog['id']; ?>" class="blog-card h-100">

                            <img
                                src="<?php echo !empty($blog['file']) ? $path . $blog['file'] : 'branch/assets/blog1.webp'; ?>"
                                alt="<?php echo htmlspecialchars($blog['title'], ENT_QUOTES, 'UTF-8'); ?>"
                                class="img-fluid"
                                loading="lazy"
                            >

                            <div class="blog-content p-3">

                                <span class="section-tag">
                                    <?php echo $tags[$i % 3]; ?>
                                </span>

                                <h3 class="testimonial-heading">
                                    <?php echo htmlspecialchars($blog['title'], ENT_QUOTES, 'UTF-8'); ?>
                                </h3>

                                <div class="section-text mt-3">
                                    <?php echo $blog['sdesc']; ?>
                                </div>

                                <span class="read-more">Read More →</span>

                            </div>
                        </a>

                    </div>

                <?php
                        $i++;
                    }

                } else {
                ?>

                <?php } ?>

            </div>
        </div>
    </section>

<?php } ?>

</main>

<?php include __DIR__ . '/footer.php'; ?>
