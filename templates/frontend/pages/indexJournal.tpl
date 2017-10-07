{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * UPDATED/CHANGED/MODIFIED: Marc Behiels - marc@elemental.ca - 250416
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div id="main-content" class="page_index_journal" role="content">

	{call_hook name="Templates::Index::journal"}

	<!--inicio-->

	<!-- Inicio Banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  {**<ol class="carousel-indicators">
  *{assign var=indice value=0}
	*{if $homepageImage}
  *  	<li data-target="#myCarousel" data-slide-to="{$indice}" class="active"></li>
  *  	{assign var=indice value=$indice+1}
  *  {/if}
  *  {if $currentJournal->_data.imgCarousel1.$currentLocale.uploadName}
  *  	<li data-target="#myCarousel" data-slide-to="{$indice}"></li>
  *  	{assign var=indice value=$indice+1}
  *  {/if}
  *  {if $currentJournal->_data.imgCarousel2.$currentLocale.uploadName}
  *  	<li data-target="#myCarousel" data-slide-to="{$indice}"></li>
  *  	{assign var=indice value=$indice+1}
  *  {/if}
  *  {if $currentJournal->_data.imgCarousel3.$currentLocale.uploadName}
  *  	<li data-target="#myCarousel" data-slide-to="{$indice}"></li>
  *  	{assign var=indice value=$indice+1}
  *  {/if}
  </ol>*}
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

    <div class="item active">
      <figure class="imagen-principal">

						<img class="img-responsive" src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">

						<!--<figcaption>-->
							{*$additionalHomeContent*}
						<!--</figcaption>-->

						{if $additionalHomeContent}
		<figcaption>
			{$additionalHomeContent}
		</figcaption>
	{/if}

					</figure>
    </div>
    {if $currentJournal->_data.imgCarousel1.$currentLocale.uploadName}
    <div class="item">
     <figure class="imagen-principal">

						<img class="img-responsive" src="{$publicFilesDir}/{$currentJournal->_data.imgCarousel1.$currentLocale.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
					</figure>
    </div>
    {/if}
    {if $currentJournal->_data.imgCarousel2.$currentLocale.uploadName}
    <div class="item">
      <figure class="imagen-principal">

						<img class="img-responsive" src="{$publicFilesDir}/{$currentJournal->_data.imgCarousel2.$currentLocale.uploadName|escape:"url"}" alt="">
					</figure>
    </div>
    {/if}
    {if $currentJournal->_data.imgCarousel3.$currentLocale.uploadName}
    <div class="item">
      <figure class="imagen-principal">

						<img class="img-responsive" src="{$publicFilesDir}/{$currentJournal->_data.imgCarousel3.$currentLocale.uploadName|escape:"url"}" alt="">
					</figure>
    </div>
    {/if}
  </div>

  <!-- Left and right controls -->

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-triangle-left" aria-hidden="true"></span>

    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div><!-- Fin Banner-->

	<!--fin-->

	{**if $homepageImage}
		<div class="homepage-image">
			<img class="img-responsive" src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
		</div>
	{/if**}

	{if $journalDescription}
		<div class="journal-description">
			{$journalDescription}
		</div>
	{/if}

	{* Announcements *}
	{if $numAnnouncementsHomepage && $announcements|count}
		<section class="cmp_announcements media">
			<header class="page-header">
				<h2>
					{translate key="announcement.announcements"}
				</h2>
			</header>
			<div class="media-list">
				{foreach name=announcements from=$announcements item=announcement}
					{if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
						{php}break;{/php}
					{/if}
					{include file="frontend/objects/announcement_summary.tpl" heading="h3"}
				{/foreach}
			</div>
		</section>
	{/if}


	{* Latest issue *}
	{if $issue}

		<section class="current_issue">
			<header class="page-header">
				<h2>
					{translate key="journal.currentIssue"}
				</h2>
			</header>
			<p class="current_issue_title lead">
				{$issue->getIssueIdentification()|strip_unsafe_html}
			</p>
			{include file="frontend/objects/issue_toc.tpl"}
			<!--<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="btn btn-primary read-more">
				{translate key="journal.viewAllIssues"}
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>-->
		</section>
	{/if}

	{* Additional Homepage Content *}
	{if $additionalHomeContent}
		<section class="additional_content">
			{$additionalHomeContent}
		</section>
	{/if}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}


