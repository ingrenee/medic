<?php
/**
 * Template Name: Dos columna
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

<div id="content">
		<div id="line-1">
				<div id="col2-left">
						<div class="col-block">
								<?php
				// Start the Loop.
				while ( have_posts() ) : the_post();

					// Include the page content template.
					get_template_part( 'content', 'page' );

					// If comments are open or we have at least one comment, load up the comment template.
					if ( comments_open() || get_comments_number() ) {
						comments_template();
					}
				endwhile;
			

			
			?>
			<div class="default">
								<div id="acordeon" class="yoo-accordion">
										<?PHP
if(get_field('item-de-acordeon')): ?>
										<?php while(the_repeater_field('item-de-acordeon',$post->ID)): ?>
										<h3>
												<?php the_sub_field('titulo'); ?>
										</h3>
										<div class="contenido">
												<?php the_sub_field('descripcion'); ?>
										</div>
										<?php endwhile; ?>
										<?php endif;
?></div>
								</div>
								<span class="article_separator">&nbsp;</span>
								
						</div>
				</div>
				<div id="col2-right">
						<div id="mod-blue-block">
								<div id="mod-blue-t">
										<div id="mod-blue-r">
												<div id="mod-blue-b">
														<div id="mod-blue-l">
																<div id="mod-blue-tl">
																		<div id="mod-blue-tr">
																				<div id="mod-blue-br">
																						<div id="mob-blue-bl">
																								<?PHP
										 get_sidebar('forpages');
										 ?>
																						</div>
																				</div>
																		</div>
																</div>
														</div>
												</div>
										</div>
								</div>
						</div>
				</div>
				<div class="clearfix"></div>
		</div>
		<div id="main-col">
				<div class="moduletable">
						<?PHP
										 get_sidebar();
										 ?>
				</div>
		</div>
		<div class="clearfix"></div>
</div>
<?php
get_sidebar();
get_footer();


