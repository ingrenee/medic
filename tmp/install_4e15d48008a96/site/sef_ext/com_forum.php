<?php
/**
 * SEF module for Joomla!
 * Originally written for Mambo as 404SEF by W. H. Welch.
 *
 * @author      $Author: shumisha $
 * @copyright   Yannick Gaultier - 2007-2010
 * @package     sh404SEF-15
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @version     $Id: com_forum.php 1190 2010-04-04 16:00:15Z silianacom-svn $
 */

// Security check to ensure this file is being included by a parent file.
if (!defined('_JEXEC')) die('Direct Access to this location is not allowed.');


/**
* Toevoegen:
* viewforum en viewtopic weghalen?
* support voor: index.php?option=com_forum&Itemid=26&c=1
**/
extract($vars);

$categorytitle = true;
$forumtitle = true;
$topictitle = true;

//Er zou geen sessieid meer in mogen voorkomen
if (strstr($string, 'sid=')) {
	die('Sessionid exists in the url, that should not be!');
}

global $table_prefix;

if ($forumtitle == true || $topictitle == true || $categorytitle == true) {
	if (file_exists(sh404SEF_ABS_PATH . 'components/com_forum/config.php')) {
		require_once (sh404SEF_ABS_PATH . 'components/com_forum/config.php');
	}

	global $table_prefix;

	if ($categorytitle == true && !empty($c)) {
		$query = "
		SELECT `cat_title`
		FROM `".$table_prefix . categories."`
		WHERE `cat_id` = '$c'
		";
		$database->setQuery($query);
		$c = $database->loadResult();
	}
	elseif ($forumtitle == true && !empty($f)) {
		$query = "
		SELECT `forum_name`
		FROM `".$table_prefix . forums."`
		WHERE `forum_id` = '$f'
		";
		$database->setQuery($query);
		$f = $database->loadResult();
	}
	elseif ($topictitle == true && !empty($t)) {
		$query = "
		SELECT `topic_title`
		FROM `".$table_prefix . topics."`
		WHERE `topic_id` = '$t'
		";
		$database->setQuery($query);
		$t = $database->loadResult();
	}
}

// First subdir
if (!empty($option)) {
	$title[] = getMenuTitle($option, @$this_task);
	$title[] = '/';
	unset($vars['option']);
	if (empty($title)) {
		$comp_name = str_replace('com_', '', $option);
		$title = $comp_name;
	}
}

// Page
if (!empty($page)) {
	$title[] = $page;
	$title[] = '/';
	unset($vars['page']);
}

// Mode
if (!empty($mode)) {
	$title[] = $mode;
	$title[] = '/';
	unset($vars['mode']);
}

// Search
if (!empty($search_id)) {
	$title[] = $search_id;
	$title[] = '/';
	unset($vars['search_id']);
}

// Category
if (!empty($c)) {
	$title[] = $c;
	unset($vars['c']);
}

// User
if (!empty($u)) {
	$title[] = $u . $sefConfig->suffix;
	unset($vars['u']);
}

// Forum
if (!empty($f)) {
	$title[] = $f;
	unset($vars['f']);
}

// Topic
if (!empty($t)) {
	$title[] = $t . $sefConfig->suffix;
	unset($vars['t']);
}

// Mark
if (!empty($mark)) {
	$title[] = 'mark';
	$title[] = '/';
	$title[] = $mark . $sefConfig->suffix;
	unset($vars['mark']);
}

if (count($title) > 0) $string = sef_404::sefGetLocation($string, $title, null, (isset($limit) ? @$limit : null), (isset($limitstart) ? @$limitstart : null));

?>
