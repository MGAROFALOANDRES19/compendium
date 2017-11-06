{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{*if empty($isFullWidth)*}
		{*call_hook|assign:"sidebarCode" name="Templates::Common::Sidebar"*}
		{*if $sidebarCode*}
    <!--
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
-->
				{*$sidebarCode*}

			<!--</aside>--><!-- pkp_sidebar.left -->
		{*/if*}
	{*/if*}
  </div><!-- pkp_structure_content -->
  <footer class="footer" role="contentinfo">

  	<div class="container">
      
      <div class="row">
    		

    		<div class="col-md-8" role="complementary" aria-label="{translate|escape key="about.aboutThisPublishingSystem"}">

          <div class="social-share">
                            <a class="svg-icon-social" href="#" title="Follow on Twitter">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on Facebook">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on LinkedIn">
                               <i class="fa fa-linkedin" aria-hidden="true"></i>
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on Goolge+">
                                <i class="fa fa-google-plus" aria-hidden="true"></i>
                            </a>
                        </div>


                        <div class="languages">

      {if $currentLocale|replace:"_":"-" eq "es-ES"}
      <span>Español</span>
      <span>/</span>
      <a href="{$baseUrl}/index.php/compendium/user/setLocale/en_US">English</a>
      {/if}
     
      {if $currentLocale|replace:"_":"-" eq "en-US"}
      <a href="{$baseUrl}/index.php/compendium/user/setLocale/es_ES">Español</a>
      <span>/</span>
      <span>English</span>
      {/if}

                  </div>
    			

            <!--<img alt="{translate key=$packageKey}" src="{$baseUrl}/{$brandImage}">-->
    			<!--<a href="{$pkpLink}">
    				<img alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/lib/pkp/templates/images/pkp_brand.png">
    			</a>-->
    		</div>

        {if $pageFooter}
        <div class="col-md-4 logo-telefono">
          <a href="{url page="about" op="aboutThisPublishingSystem"}">
            <img src="{$baseUrl}/plugins/themes/compendium/images/recurso_1.png" class="img-logo">
          </a>

          


          <!--<p class="telefono">
            <span>(04) 2269061 / (04) 2269039</span></p>-->

        </div>
        {/if}

      </div> <!-- .row -->

  	</div><!-- .container -->

  </footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
