<!DOCTYPE html>
<html>
<head>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@0;1&display=swap" rel="stylesheet">
       <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/fran.css" type="text/css" media="all">      
    <?php
        include 'components/metas-seo.php';
        include_once $_SERVER['DOCUMENT_ROOT'].'/wp-content/themes/franperez/functions.php';
        wp_head();
    ?>
</head>
<body>
        <header>
            <nav class="navbar">
                <ul class="logo">
                <li class="franblog"><a href="/"><img src="/wp-content/themes/franperez/images/other/fran-perez-logo.webp" height="80px" title="Logotipo Fran Perez" alt="logotipo Fran Perez SEO"></li>
                </ul>
                <ul class="nav-links">
                    <li><a href="https://fran-perez.test/blog/">Blog</a></li>
                    <li><a href="https://fran-perez.test/sobremi/">Sobre mi</a></li>
                    <li class="contacto"><a href="https://fran-perez.test/sobremi/">Contacto</a></li>
                </ul>
            </nav>
        </header>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
      const navLinks = document.querySelectorAll('nav a');
      const serviciosSection = document.querySelector('.servicios');

      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            navLinks.forEach(link => link.style.color = 'white');
          } else {
            navLinks.forEach(link => link.style.color = 'black');
          }
        });
      }, {
        root: null,
        rootMargin: '0px',
        threshold: 0.2
      });

      observer.observe(serviciosSection);
    });
  </script>
</body>
</html>