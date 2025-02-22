<?php
    /* Template Name: sobre mi */
    get_header();

?>
<h1><?php the_title();?></h1>
<div class="sobremicontent">
    <p><?php echo the_content()?></p>
</div>
<?php
    //include_once __DIR__ . ()'/../footer.php');
    get_footer();
?>