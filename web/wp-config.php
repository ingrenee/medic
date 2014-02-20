<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'inbiomed_wp');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'root');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', '');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', ';5|kYkZ`l*<^V-D&U|bMu17Y:I^@QNBGp5;9;L#q g!U-db5<s syt|Z`Rckd$7t'); // Cambia esto por tu frase aleatoria.
define('SECURE_AUTH_KEY', '-0+Q3B/BE]P(4/rs=CQiY tY!-BWeStS_.JjhL;[x!&+!?c 7.~P#-*q|N__4IpD'); // Cambia esto por tu frase aleatoria.
define('LOGGED_IN_KEY', '+].+T~*n*#F|#~+uR9AlCfafB*-B2hK^9PzD6|!=b!=rR|Zq@+A_<r9uX^:O|kdM'); // Cambia esto por tu frase aleatoria.
define('NONCE_KEY', ';t!j|hQAnd`bw+MG^zUqTIES,Nylq?1&CC+b|yj/cdE-,|rU=it[sn+eZU4|6JKZ'); // Cambia esto por tu frase aleatoria.
define('AUTH_SALT', '~8<VGZim,0h+&qM819 6va-*ZRO0 ds43iOcjf{IJ?oF}i9FDPe[?pOgPYkX|qzl'); // Cambia esto por tu frase aleatoria.
define('SECURE_AUTH_SALT', 'A]Hv![A88oo8]vG^:]tzj7_lQ$$1_tuz.`34;kmc7JO4x>sfS|X@Bhsrs`}+M5yc'); // Cambia esto por tu frase aleatoria.
define('LOGGED_IN_SALT', 'l+aj|`:yc@JbP*u2Fu.m+GI@/wp /:xN,f{L^sgH%yLE1fq-<9Dx/P6_M8P*NFr='); // Cambia esto por tu frase aleatoria.
define('NONCE_SALT', '&>i.Ji$`~VHv^C0WfPQM/a1Tpy%VFN!#EqZ3=+Uh<F+oitSq|<szo/D^I 4ahN~}'); // Cambia esto por tu frase aleatoria.

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'wp_';

/**
 * Idioma de WordPress.
 *
 * Cambia lo siguiente para tener WordPress en tu idioma. El correspondiente archivo MO
 * del lenguaje elegido debe encontrarse en wp-content/languages.
 * Por ejemplo, instala ca_ES.mo copiándolo a wp-content/languages y define WPLANG como 'ca_ES'
 * para traducir WordPress al catalán.
 */
define('WPLANG', 'es_ES');

/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

