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
    		{if $pageFooter}
        <div class="col-md-8">
          {$pageFooter}


          <p class="telefono">
            <span>(04) 2269061 / (04) 2269039</span></p>

        </div>
    		{/if}

    		<div class="col-md-4" role="complementary" aria-label="{translate|escape key="about.aboutThisPublishingSystem"}">

          <div class="social-share">
                            <a class="svg-icon-social" href="#" title="Follow on Twitter">
                                <img src="https://cdn.elsevier.io/verona/includes/svg/icon-social-twitter.svg" alt="Icon social media twitter">
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on Facebook">
                                <img src="https://cdn.elsevier.io/verona/includes/svg/icon-social-facebook.svg" alt="Icon social media facebook">
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on LinkedIn">
                                <img src="https://cdn.elsevier.io/verona/includes/svg/icon-social-linkedin.svg" alt="Icon social media linkedin">
                            </a>
                            <a class="svg-icon-social" href="#" title="Follow on Goolge+">
                                <img src="https://cdn.elsevier.io/verona/includes/svg/icon-social-googleplus.svg" alt="Icon social media google plus">
                            </a>
                        </div>
    			<!--<a href="{url page="about" op="aboutThisPublishingSystem"}">
            <img src="{$baseUrl}/plugins/themes/compendium/images/recurso_1.png" class="img-logo">
    			</a>-->
            <!--<img alt="{translate key=$packageKey}" src="{$baseUrl}/{$brandImage}">-->
    			<!--<a href="{$pkpLink}">
    				<img alt="{translate key="common.publicKnowledgeProject"}" src="{$baseUrl}/lib/pkp/templates/images/pkp_brand.png">
    			</a>-->
    		</div>

      </div> <!-- .row -->
      
  	</div><!-- .container -->
  </footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
