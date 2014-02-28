<?php
/**
 * The Content Sidebar
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

if ( ! is_active_sidebar( 'sidebar-home' ) ) {
	return;
}
?>
<div id="sidebar-home" class="content-sidebar widget-area" role="complementary">
	<?php dynamic_sidebar( 'sidebar-home' ); ?>
</div><!-- #content-sidebar -->
