<?php
/**
 * Template Name: Dos columna
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>


<div id="content">
              <div id="line-1">
        <div id="col2-left">
          <div class="col-block">
            

<?php
				// Start the Loop.
				while ( have_posts() ) : the_post();

					// Include the page content template.
					get_template_part( 'content', 'page' );

					// If comments are open or we have at least one comment, load up the comment template.
					if ( comments_open() || get_comments_number() ) {
						comments_template();
					}
				endwhile;
			?>






<span class="article_separator">&nbsp;</span>

			     
              <div id="user-content">
                <div id="user-cblock">
    						<div class="moduletable-blank">
					<div class="default">
	<div id="yoo-accordion-1" class="yoo-accordion">
	
		<dl>
			
						<dt class="toggler item1 first">
				Asesorías			</dt>
			<dd class="content item1 first">
				<span class="article" style="display: block">
	<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td><img style="border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/01000000.jpg" alt="01" width="71" height="53"><br><br></td>
<td>Asesoría durante el diseño, planificación y ejecución de proyectos de investigación biomédica, incluyendo Tesis.</td>
</tr>
<tr>
<td><img style="border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/02000000.jpg" alt="02" width="71" height="53"><br><br></td>
<td>Asesoría en el diseño de unidades o centros de investigación biomédica.</td>
</tr>
<tr>
<td><img style="border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/03000000.jpg" alt="03" width="71" height="53"><br><br></td>
<td>Asesoría en desarrollo de eventos o programas académicos de investigación</td>
</tr>
</tbody>
</table>	</span>			</dd>
				
			
						<dt class="toggler item2">
				Equipamiento			</dt>
			<dd class="content item2">
				<span class="article" style="display: block">
	<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td><img style="border-width: 0px; border-color: #000000; margin: 0px;  padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/04000000.jpg" alt="04" width="71" height="53"></td>
<td>Equipamiento de laboratorios y áreas destinadas a la investigación en salud.</td>
</tr>
</tbody>
</table>	</span>			</dd>
				
			
						<dt class="toggler item3">
				Servicios			</dt>
			<dd class="content item3">
				<span class="article" style="display: block">
	<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td><img style="border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/05000000.jpg" alt="05" width="71" height="53"></td>
<td>Brindar servicios de   desarrollo y apoyo a las investigaciones a través de monitoreo   científico con recursos humanos previamente calificados.</td>
</tr>
</tbody>
</table>	</span>			</dd>
				
			
						<dt class="toggler item4 last">
				Eventos			</dt>
			<dd class="content item4 last">
				<span class="article" style="display: block">
	<table style="width: 100%;" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td><img style="border-color: #000000; border-width: 0px; margin: 0px; padding-right: 10px; vertical-align: middle;" src="Consultor%EDas_files/06000000.jpg" alt="06" width="71" height="53"></td>
<td>Asesoría en organización de cursos, talleres y conferencias con ponentes nacionales e internacionales.</td>
</tr>
</tbody>
</table>	</span>			</dd>
				
				</dl>

	</div>
</div><script type="text/javascript">
// <!--
new YOOaccordion($$('#yoo-accordion-1 .toggler'), $$('#yoo-accordion-1 .content'), { openAll: false, allowMultipleOpen: false });
// -->
</script>
		</div>
	
                </div>
                <div class="clearfix"></div>
              </div>
                          
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
							
						
							<?PHP
										 get_sidebar('forpages');
										 ?>
                              		
	
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
    <div id="main-col">
										<div class="moduletable">
										
										
										
										 
										 <?PHP
										 get_sidebar();
										 ?>
										 
										 
										 </div>
								</div>      
      <div class="clearfix"></div>
                     </div>



<?php
get_sidebar();
get_footer();
