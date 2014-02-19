<?php
/**
 * @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />

<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/template.css"/>
</head>

<body>
<div id="wrapp-top">
</div>
<div id="wrapp-middle">
  <div class="block">
	<div id="header">
      <div id="header-1">
  		<div id="logo"><jdoc:include type="modules" name="logo" style="xhtml" /></div>
        <div id="menu"><jdoc:include type="modules" name="menu" style="xhtml" /></div>
      </div>
    </div>
    <div id="banner">
      <div id="banner-1"><jdoc:include type="modules" name="banner" style="xhtml" /></div>
    </div>
    <div id="content">
    <?php if($this->countModules('inset')) : ?>
    <div class="inset">
    <jdoc:include type="modules" name="inset" style="xhtml" />
    </div>
    <?php else: ?>
    <?php if($this->countModules('right')) : ?>
      <div id="line-1">
        <div id="col2-left">
          <div class="col-block">
            <jdoc:include type="component" />
			  <?php if($this->countModules('user4')) : ?>   
              <div id="user-content">
                <div id="user-cblock">
    				<jdoc:include type="modules" name="user4" style="xhtml" />
                </div>
                <div class="clearfix"></div>
              </div>
              <?php endif; ?>            
          </div>
        </div>
        <div id="col2-right">
          <div id="mod-blue-block">
              <div id="mod-blue-t">
                <div id="mod-blue-r">
                  <div id="mod-blue-b">
                    <div id="mod-blue-l">
                      <div id="mod-blue-tl">
                        <div id="mod-blue-tr">
                          <div id="mod-blue-br">
                            <div id="mob-blue-bl">
                              <jdoc:include type="modules" name="right" style="xhtml" />
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
              </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
    <div id="main-col"><jdoc:include type="modules" name="left" style="xhtml" /></div>      
      <div class="clearfix"></div>
     <?php else: ?>
      <div id="content-1">
        <div id="main-col"><jdoc:include type="modules" name="left" style="xhtml" /></div>
        <div id="main-content">
          <div class="col-block">
            <jdoc:include type="component" />
			  <?php if($this->countModules('user4')) : ?>   
              <div id="user-content">
                <div id="user-cblock">
    				<jdoc:include type="modules" name="user4" style="xhtml" />
                </div>
                <div class="clearfix"></div>
              </div>
              <?php endif; ?>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <?php endif; ?>
      <?php if($this->countModules('user1 or user2 or user3')) : ?>   
      <div id="line-2">
        <div id="col3-left">
          <div class="col-block"><jdoc:include type="modules" name="user1" style="xhtml" /></div>
        </div>
        <div id="col3-middle">
          <div class="col-block"><jdoc:include type="modules" name="user2" style="xhtml" /></div>
        </div>
        <div id="col3-right">
          <div class="col-block"><jdoc:include type="modules" name="user3" style="xhtml" /></div>
        </div>
        <div class="clearfix"></div>
      </div>
      <?php endif; ?>
      <?php endif; ?>
    </div>
  </div>
</div>
<div id="wrapp-bottom">
  <div class="block">
    <div id="bottom"><jdoc:include type="modules" name="bottom" style="xhtml" /></div>
  </div>
</div>
</body>
</html>
