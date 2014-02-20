<?php
/**
 * Template Name: Una columna
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>



<div id="content">
						<div id="content-1">
								<div id="main-col">
										<div class="moduletable">
										
										
										
										 
										 <?PHP
										 get_sidebar();
										 ?>
										 
										 
										 </div>
								</div>
								<div id="main-content">
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
												
												
												
												
												<span class="article_separator">&nbsp;</span> </div>
								</div>
								<div class="clearfix"></div>
						</div>
				</div>






























<?php

get_footer();
