<?php
/**
* @version 1.2.0
* @package RSform!Pro 1.2.0
* @copyright (C) 2007-2009 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

	$db = JFactory::getDBO();
	
	// Select components
	$db->setQuery("SELECT #__rsform_properties.PropertyValue, #__rsform_components.ComponentId, #__rsform_components.ComponentTypeId FROM #__rsform_components LEFT JOIN #__rsform_properties ON #__rsform_properties.ComponentId=#__rsform_components.ComponentId WHERE #__rsform_components.FormId=".$formId." AND #__rsform_properties.PropertyName='NAME' AND #__rsform_components.Published=1 ORDER BY #__rsform_components.Order");
	$info = $db->loadAssocList();

	$outLeft ='';
	$outLeft.='<table border="0">'."\n";

	$outRight ='';
	$outRight.='<table border="0">'."\n";

	$out  = '<div class="componentheading">{global:formtitle}</div>'."\n";
	$out .= '<table border="0">'."\n";

	$i = 0;
	foreach ($info as $r)
	{
		$componentProperties=RSgetComponentProperties($r['ComponentId']);
		if(in_array($r['ComponentTypeId'],$RSadapter->config['component_ids']))
		{
			$tmp = '';
			$tmp.= "\t\t\t\t<tr>\n";
			$tmp.= "\t\t\t\t\t<td>{".$r['PropertyValue'].":caption}".((isset($componentProperties['REQUIRED']) && $componentProperties['REQUIRED']=='YES') ? " (*)" : "")."</td>\n";
			$tmp.= "\t\t\t\t\t<td>{".$r['PropertyValue'].":body}<br/>\n";
			$tmp.= "\t\t\t\t\t{".$r['PropertyValue'].":validation}</td>\n";
			$tmp.= "\t\t\t\t\t<td>{".$r['PropertyValue'].":description}</td>\n";
			$tmp.= "\t\t\t\t</tr>\n";
	
			if($i%2) $outRight .= $tmp;
			else $outLeft .= $tmp;
	
			$i ++;
		}
	}

	$outLeft.="\t\t\t</table>\n";
	$outRight.="\t\t\t</table>\n";

	$out .= "\t<tr>\n";
	$out .= "\t\t<td valign=\"top\">\n";
	$out .= "\t\t\t".$outLeft."\n";
	$out .= "\t\t</td>\n";
	$out .= "\t\t<td valign=\"top\">\n";
	$out .= "\t\t\t".$outRight."\n";
	$out .= "\t\t</td>\n";
	$out .= "\t</tr>\n";
	$out .= "</table>\n";
	
	// Clean it
	$cleanout = $db->getEscaped($out);
	// Update the layout
	$db->setQuery("UPDATE #__rsform_forms SET FormLayout='".$cleanout."' WHERE FormId=".$formId);
	$db->query();
	
	return $out;
?>