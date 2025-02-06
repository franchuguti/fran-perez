<?php
    get_header();
?>
<h1>PAGE</h1>
<div class="generico">
    <h1><?php the_title();?></h1>
        <section id="contenido">
            <?php
            echo the_content();
            ?>
        </section>
</div>

<?php
    get_footer();
?> 