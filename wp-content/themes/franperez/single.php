<?php
    include_once 'header.php';
    $myblog = array('SEO, uidesign, uxdesign'); 
?>
<header>
            <nav class="navbar">
                <ul class="nav-links-blog">
                    <li class="etiqueta"><a href="/">UI Design</li>
                    <li class="etiqueta"><a href="/wp-content/themes/franperez/plantillas/blog.php">UX Design</a></li>
                    <li class="etiqueta"><a href="/sobre-mi/">SEO</a></li>
                </ul>
            </nav>
        </header>
<section id="contenido">
    <div class="postpage">
         <h1 class="titleblog"><?php the_title();?></h1>
        <h2 class="descorta"><?php the_field('intro'); ?> </h2>
        <div class="image-container">
             <img height="400px" class="imageblog" src="<?php the_field('imagen_cover'); ?>" />
         </div>
        <?php the_field( 'texto' ); ?>
    </div>

        <?php if (in_category('$myblog')){
           ?>         
           <div class="infofesti" >
            
           <img height="400px" class="aspectfesti" src="<?php the_field('imagen_cover'); ?>" />
           <?php }
            else {;}
            echo the_content();
        ?>
</section>
</div>

<?php include_once 'footer.php'; ?>