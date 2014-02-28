<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme and one
 * of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query,
 * e.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

<?PHP  if(is_home()):?>
<div id="content">
						<div class="inset">
								<div class="moduletable">
								<?PHP
$options = get_option( 'wedevs_basics' );
?>
<?PHP if($options['widget_home']=='NO'):?>
								
										<object style="margin: 0px; border: 0px none #000000;" width="890" height="221" data="<?php bloginfo('template_directory'); ?>/images/presenta.swf" type="application/x-shockwave-flash">
												<param name="src" value="/images/stories/flash/presentacion.swf">
												<param name="menu" value="false">
												<param name="quality" value="high">
												<param name="wmode" value="transparent">
												<param name="base" value="/">
												<param name="name" value="presentacion.swf">
										</object>
			<?PHP else:?>							
											<?php get_sidebar( 'home' ); ?>
						<?PHP endif;?>				
								</div>
						</div>
				</div>
<?PHP else:?>

<div id="main-content" class="main-content">

<?php
	if ( is_front_page() && twentyfourteen_has_featured_posts() ) {
		// Include the featured content template.
		get_template_part( 'featured-content' );
	}
?>

	<div id="primary" class="content-area">
		<div id="content" class="site-content" role="main">

		<?php
			if ( have_posts() ) :
				// Start the Loop.
				while ( have_posts() ) : the_post();

					/*
					 * Include the post format-specific template for the content. If you want to
					 * use this in a child theme, then include a file called called content-___.php
					 * (where ___ is the post format) and that will be used instead.
					 */
					get_template_part( 'content', get_post_format() );

				endwhile;
				// Previous/next post navigation.
				twentyfourteen_paging_nav();

			else :
				// If no content, include the "No posts found" template.
				get_template_part( 'content', 'none' );

			endif;
		?>

		</div><!-- #content -->
	</div><!-- #primary -->
	<?php get_sidebar( 'content' ); ?>
</div>
<?PHP endif;?>








<!-- #main-content -->

<?php

get_footer();
