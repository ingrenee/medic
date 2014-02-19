<?php
/**
 * SEF module for Joomla!
 *
 * @author      $Author: shumisha $
 * @copyright   Yannick Gaultier - 2007-2010
 * @package     sh404SEF-15
 * @license     http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @version     $Id: default_filters.php 1629 2010-09-13 15:55:24Z silianacom-svn $
 */

// Security check to ensure this file is being included by a parent file.
if (!defined('_JEXEC')) die('Direct Access to this location is not allowed.');

?>

<table>
  <tr>
    <td align="left" nowrap="nowrap">
      <?php echo JText::_( 'Search' ); ?>:
      <input type="text" name="search_all" id="search_all" value="<?php echo $this->options->search_all;?>" size="35" maxlength="255" class="text_area" onchange="document.adminForm.limitstart.value=0;document.adminForm.submit();" />
      <button onclick="document.adminForm.limitstart.value=0;this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
      <button onclick="document.adminForm.limitstart.value=0;document.getElementById('search_all').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
    </td>
    
    <?php if (!$this->slowServer) :?>
    <td align="left" nowrap="nowrap">
      <?php echo JText16::_( 'COM_SH404SEF_PAGE_ID' ); ?>:
      <input type="text" name="search_pageid" id="search_pageid" value="<?php echo $this->options->search_pageid;?>" size="20" maxlength="255" class="text_area" onchange="document.adminForm.limitstart.value=0;document.adminForm.submit();" />
      <button onclick="document.adminForm.limitstart.value=0;this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
      <button onclick="document.adminForm.limitstart.value=0;document.getElementById('search_pageid').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
    </td>
    <?php else: ?>
    <input type="hidden" value="" name="search_pageid" />
    <?php endif; ?>
    
    <td width="100%">
        &nbsp;
      </td>
    <td>
      <?php echo $this->optionsSelect->components;  ?>
    </td>
    <td>
      <?php echo $this->optionsSelect->languages;  ?>
    </td>
    
    <?php if (!$this->slowServer) : ?>
    <td>
      <?php echo $this->optionsSelect->filter_duplicate;  ?>
    </td>
    <td>
      <?php echo $this->optionsSelect->filter_alias;  ?>
    </td>
    <?php else: ?>
    <input type="hidden" value="0" name="filter_duplicate" />
    <input type="hidden" value="0" name="filter_aliases" />
    <?php endif; ?>
    
    <td>
      <?php echo $this->optionsSelect->filter_url_type;  ?>
    </td>
  </tr>
</table>