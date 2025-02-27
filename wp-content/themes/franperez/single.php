<?php
    include_once 'header.php';
    $myblog = array('SEO, uidesign, uxdesign'); 
?>
<section id="contenido">
    <div class="postpage">
         <h1 class="titleblog"><?php the_title();?></h1>
         <h2 class="descorta"><?php the_field('intro'); ?> </h2>
      <div class="infopost">
         <div class="autorfecha">
            <div class="autor">
              <h4 class="autorpost"><?php the_field( 'autor' ); ?> </h4>
            </div>
                <div class="fecha">
                <h4 class="date"> <?php the_field( 'fecha' ); ?></h4>
                </div>
         </div>
            <div class="categoria">
                <h4 class="categoria"><?php $categoria = get_field( 'categoria' ); ?>
                <?php $term = get_term_by( 'id', $categoria, 'category' ); ?>
                <?php if ( $term ) : ?>
            	<a href="<?php echo esc_url( get_term_link( $term ) ); ?>"><?php echo esc_html( $term->name ); ?></a>
                <?php endif; ?></h4>  
            </div>
        </div>   
        
        <div class="image-container">
             <img height="300px" class="imageblog" src="<?php the_field('imagen_cover'); ?>" />
         </div>
         <p><?php echo the_content();?></p>
    </div>
</section>
</div>

<?php include_once 'footer.php'; ?>

