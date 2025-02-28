<?php 
$plantillas = __DIR__ . '/plantillas/';
$imagenes = __DIR__ .'/imagenes/';

function tresposts (){
    $plantillas = __DIR__ . '/plantillas/';
    include $plantillas .'trespost.php';
}
add_shortcode('latest_post' , 'tresposts');

function desregistrar_estilos_wp() {
    global $wp_styles;

    if (!is_admin()) { // Evita que afecte al panel de administración
        foreach ($wp_styles->registered as $handle => $style) {
            wp_dequeue_style($handle);
            wp_deregister_style($handle);
        }
    }
}
add_action('wp_enqueue_scripts', 'desregistrar_estilos_wp', 100);

?>