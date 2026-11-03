
<?php
require_once __DIR__ . '/../../manager/database/db.php';

$typeSegments = explode('/', trim($_GET['type'] ?? '', '/'));
$blogSlug = $typeSegments[1] ?? '';

$blog = null;

if ($blogSlug !== '') {

    $blogSql = mysqli_query($con, "SELECT * FROM blogs WHERE status = 1 ORDER BY id DESC");

    if ($blogSql) {
        while ($row = mysqli_fetch_assoc($blogSql)) {

            $slug = !empty($row['url'])
                ? trim($row['url'])
                : seo_friendly_url($row['title']);

            if ($blogSlug === $slug) {
                $blog = $row;
                break;
            }
        }
    }
}

include 'header.php';
?>

<main>

<?php if (!empty($blog)) { ?>

    <!-- Blog Detail -->
    
<!-- Blog Detail -->
<section class="pregnancy-blog-page">
    <div class="container px-4">
        <div class="row g-4">

            <!-- Left Side: Blog Detail -->
            <div class="col-lg-8">

                <div class="pregnancy-blog-banner mb-4">
                    <img
                        src="<?php echo !empty($blog['file']) ? $path . $blog['file'] : $urlbase . 'branch/assets/blog1.webp'; ?>"
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

            <!-- Right Side: Other Blogs -->
            <div class="col-lg-4">

                <div class="other-blogs-sidebar">

                    <h3 class="sidebar-title">Other Blogs</h3>

                    <?php
                    $currentBlogId = (int)$blog['id'];

                    $otherSql = mysqli_query(
                        $con,
                        "SELECT * FROM blogs
                         WHERE status = 1 AND id != $currentBlogId
                         ORDER BY id DESC
                         LIMIT 6"
                    );

                    if ($otherSql && mysqli_num_rows($otherSql) > 0) {

                        while ($otherBlog = mysqli_fetch_assoc($otherSql)) {

                            $otherSlug = !empty($otherBlog['url'])
                                ? trim($otherBlog['url'])
                                : seo_friendly_url($otherBlog['title']);
                    ?>

                        <a href="<?php echo htmlspecialchars($urlbase . 'blogs/' . $otherSlug, ENT_QUOTES, 'UTF-8'); ?>"
                           class="other-blog-item">

                            <img
                                src="<?php echo !empty($otherBlog['file']) ? $path . $otherBlog['file'] : $urlbase . 'branch/assets/blog1.webp'; ?>"
                                alt="<?php echo htmlspecialchars($otherBlog['title'], ENT_QUOTES, 'UTF-8'); ?>"
                                loading="lazy"
                            >

                            <div class="other-blog-content">

                                <h5>
                                    <?php echo htmlspecialchars($otherBlog['title'], ENT_QUOTES, 'UTF-8'); ?>
                                </h5>

                                <span>Read More →</span>

                            </div>

                        </a>

                    <?php
                        }
                    } else {
                        echo '<p>No other blogs available.</p>';
                    }
                    ?>

                </div>

            </div>

        </div>
    </div>
</section>


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

                        $blogCardSlug = !empty($blog['url'])
                            ? trim($blog['url'])
                            : seo_friendly_url($blog['title']);
                ?>

                    <div class="col-md-6 col-lg-4">

                       <a href="<?= htmlspecialchars($urlbase . 'blogs/' . $blogCardSlug, ENT_QUOTES, 'UTF-8') ?>" class="blog-card h-100">

                            <img
                                src="<?php echo !empty($blog['file']) ? $path . $blog['file'] : $urlbase . 'branch/assets/blog1.webp'; ?>"
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
