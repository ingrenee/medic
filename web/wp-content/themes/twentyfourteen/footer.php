<?php
/**
 * The template for displaying the footer
 *
 * Contains footer content and the closing of the #main and #page div elements.
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>





  </div>
</div>
<?php get_sidebar( 'footer' ); ?>

<div id="wrapp-bottom">
  <div class="block">
    <div id="bottom">		<div class="moduletable">
					Copyright <?PHP echo date('Y');?>. Inbiomedic S.A.C.<br>		</div>
	</div>
  </div>
</div>


		

	<?php wp_footer(); ?>
</body>
</html>