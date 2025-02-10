<?php
    get_header();
?>
<section class="introcover">
    <div class="background">
        <h1>Fran Perez SEO Técnico</h1>
    <div>
</section>
<div class="frontpage">
<h1><?php the_title();?></h1>
    <section id="contenido">
        <?php
            echo the_content();
        ?>
    </section>
<?php
echo 'ESTO ES LA HOME';
    include $plantillas . 'trespost.php';
    //include 'plantillas/trespost.php'; 
?>
</div>

<?php
    include_once 'footer.php';
?> 