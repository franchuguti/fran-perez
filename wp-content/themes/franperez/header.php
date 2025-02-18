<!DOCTYPE html>
<html>
<head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@0;1&display=swap" rel="stylesheet">
       <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/fran.css" type="text/css" media="all">      
    <?php
        include 'components/metas-seo.php';
        wp_head();
    ?>
</head>
<body>
        <header>
            <nav class="navbar">
                <ul class="logo">
                <li class="franblog"><a href="/"><img src="/wp-content/themes/franperez/images/other/svg/logofp.svg" height="30px" title="Logotipo Fran Perez" alt="logotipo Fran Perez SEO"></li>
                </ul>
                <ul class="nav-links">
                    <li><a href="/">Inicio</a></li>
                    <li><a href="__DIR__/..//plantillas/blog.php">Blog</a></li>
                    <li><a href="__DIR__/../plantillas/sobremi.php">Sobre mi</a></li>
                </ul>
                <ul class="contactbutton">
                     <div data-nosnippet class="button-50" onclick="location.href='mailto:hola@franperezg.com';">¡Hola! 👋</div>
                </ul>
            </nav>
        </header>
</body>
</html>