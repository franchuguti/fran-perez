<?php
    include_once 'header.php';
    $myblog = array('SEO, uidesign, uxdesign'); 
?>
<section id="contenido">
    <div class="postpage">
         <h1><?php the_title();?></h1>
        <div class="descorta"><?php the_field('intro'); ?> </div>
        <div class="image-container">
             <img height="300px" class="imageblog" src="<?php the_field('imagen_cover'); ?>" />
         </div>
        <?php the_field( 'texto' ); ?>
    </div>

        <?php if (in_category('$myblog')){
           ?>         
           <div class="infofesti" >
            
           <img height="300px" class="aspectfesti" src="<?php the_field('imagen_cover'); ?>" />
           <?php }
            else {;}
            echo the_content();
        ?>
</section>
</div>

<?php include_once 'footer.php'; ?>