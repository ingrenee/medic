<?php
/**
 * SEF module for Joomla!
 *
 * @author      $Author: shumisha $
 * @copyright   Yannick Gaultier - 2007-2010
 * @package     sh404SEF-15
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @version     $Id: mod_sh404sef_cpicon.php 1600 2010-09-03 10:55:18Z silianacom-svn $
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

// Ensure that user has access to this function.
$user = &JFactory::getUser();
if (!($user->usertype == 'Super Administrator' || $user->usertype == 'Administrator')) {
  // no display if not allowed
  return;
}

$lang = & JFactory::getLanguage();
$app = &JFactory::getApplication();
$document = &JFactory::getDocument();
$document->addStyleSheet( JURI::root().'administrator/modules/mod_sh404sef_cpicon/styles.css');

?>

<div id="modsh404_cpanel" style="float:<?php echo ($lang->isRTL()) ? 'right' : 'left'; ?>;">

<div class="icon"><a href="index.php?option=com_sh404sef"> <img
	src="components/com_sh404sef/assets/images/icon-48-analytics.png"
	title="sh404sef & Analytics" alt="sh404sef & Analytics" /> <span>sh404sef
& Analytics</span> </a></div>

</div>



