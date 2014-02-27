<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?>
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width">
<title>
<?php wp_title( '|', true, 'right' ); ?>
</title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<!--[if lt IE 9]>
	<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js"></script>
	<![endif]-->
<?php wp_head(); ?>
<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/css/template.css" media="screen" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

 <script>
  jQuery(function() {
    jQuery( "#acordeon" ).accordion({
      heightStyle: "content"
    });
  });
  </script>
</head>

<body <?php body_class(); ?>>
<div id="wrapp-top"> </div>
<div id="wrapp-middle">
<div class="block">
<div id="header">
		<div id="header-1">
				<?php if ( get_header_image() ) : ?>
				<div id="site-header"> <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"> <img src="<?php header_image(); ?>" width="<?php echo get_custom_header()->width; ?>" height="<?php echo get_custom_header()->height; ?>" alt=""> </a> </div>
				<?PHP else:?>
				<div id="logo">
						<div class="moduletable">  <a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><img style="border-color: #000000; border-width: 0px; margin: 0px;" src="<?php bloginfo('template_directory'); ?>/images/logo-inb.png" alt="Inbiomedic" width="316" height="89"> </a></div>
				</div>
				<?php endif; ?>
				<div id="menu">
						<div class="moduletable_menu">
								<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu menu' 
						,'link_before'          => '<span>',
	'link_after'           => '</span>',
						) ); ?>
						</div>
				</div>
		</div>
</div>
<div id="banner">
		<div id="banner-1">
				<div class="moduletable">
						<object style="margin: 0px; border: 0px none #000000;" width="904" height="228" data="<?php bloginfo('template_directory'); ?>/images/banner-h.swf" type="application/x-shockwave-flash">
								<param name="src" value="/images/stories/flash/banner-home.swf">
								<param name="menu" value="false">
								<param name="quality" value="high">
								<param name="wmode" value="transparent">
								<param name="base" value="/">
								<param name="name" value="banner-home.swf">
						</object>
				</div>
		</div>
</div>
