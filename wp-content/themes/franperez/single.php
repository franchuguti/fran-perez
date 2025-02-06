<?php
    include_once 'header.php';
?>

<div class="postpage">
<h1><?php the_title();?></h1>
    <div class="descorta"><?php the_field( 'descripcion' ); ?> </div>
    <section id="contenido">
        <?php if (in_category('festivales')){
           ?>
         <nav> <!-- Con este condicional podemos mostrar un menu si  estamos en esta categoria-->
                <ul>
                    <li><a href="/wp-content/themes/franperez/plantillas/sobremi.php"> Pincha aquí</a></li>
                </ul>
           </nav>
    </section>
        <?php }
         else {;}

            echo the_content();
        ?>
    </section>
</div>

<?php include_once 'footer.php'; ?>