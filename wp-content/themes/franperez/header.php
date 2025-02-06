<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
       <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css" type="text/css" media="all">
    <?php
        include 'components/metas-seo.php';
        wp_head();
    ?>
</head>
<body>
        <header>
            <nav class="navbar">
                <ul class="logo">
                <li class="franblog"><a href="/">Fran Perez - SEO Técnico</a></li>
                </ul>
                <ul class="nav-links">
                    <li><a href="/">Inicio</a></li>
                    <li><a href="/sobre-mi/">Sobre mi</a></li>
                </ul>
            </nav>
        </header>
</body>
</html>