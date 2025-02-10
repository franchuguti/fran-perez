<?php
    include_once 'header.php';
?>

<div class="postpage">
<h1><?php the_title();?></h1>
    <div class="descorta"><?php the_field( 'descripcion' ); ?> </div>
    <section id="contenido">
    <?php if (in_category(array('festivales', 'Seo', 'UI'))){
?>
    <div class="infofesti" >
    <img height="300px" class="aspectfesti" src="<?php the_field( 'imagen_blog' ); ?>" />
<?php
    echo 'estas en algo';
        }
           ?>   
    </section>
</div>

<?php include_once 'footer.php'; ?>