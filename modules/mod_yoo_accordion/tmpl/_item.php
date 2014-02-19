<?php
/**
* YOOaccordion Joomla! Module
*
* @author    yootheme.com
* @copyright Copyright (C) 2007 YOOtheme Ltd. & Co. KG. All rights reserved.
* @license	 GNU/GPL
*/

 // no direct access
defined('_JEXEC') or die('Restricted access');

if(function_exists('plgContentLoadModule'))	{
	$plgParams = new JParameter('');
	plgContentLoadModule($item, $plgParams);
}
?>
<span class="article" style="display: block">
	<?php echo $item->text; ?>
	<?php if (isset($item->linkOn) && $item->readmore) :
		echo '<a href="'.$item->linkOn.'">'.JText::_('Read more').'</a>';
	endif; ?>
</span>