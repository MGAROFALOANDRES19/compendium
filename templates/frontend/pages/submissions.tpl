{**
 * templates/frontend/pages/submissions.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the editorial team.
 *
 * @uses $currentJournal Journal The current journal
 * @uses $submissionChecklist array List of requirements for submissions
 *}
{include file="frontend/components/header.tpl" pageTitle="about.submissions"}

<div id="main-content" class="page page_submissions">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.submissions"}

	{* Page Title *}
	<div class="page-header">
		<h1>{translate key="plugins.themes.compendium.submissions"}</h1>
	</div>
	{* /Page Title *}

	{* Login/register prompt *}
	{if $isUserLoggedIn}
		{capture assign="newSubmission"}<a href="{url page="submission" op="wizard"}">{translate key="about.onlineSubmissions.newSubmission"}</a>{/capture}
		{capture assign="viewSubmissions"}<a href="{url page="submissions"}">{translate key="about.onlineSubmissions.viewSubmissions"}</a>{/capture}
		<div class="alert alert-info">
			{translate key="about.onlineSubmissions.submissionActions" newSubmission=$newSubmission viewSubmissions=$viewSubmissions}
		</div>
	{else}
		{capture assign="login"}<a href="{url page="login"}">{translate key="about.onlineSubmissions.login"}</a>{/capture}
		{capture assign="register"}<a href="{url page="user" op="register"}">{translate key="about.onlineSubmissions.register"}</a>{/capture}
		<div class="alert alert-info">
			{translate key="about.onlineSubmissions.registrationRequired" login=$login register=$register}
		</div>
	{/if}

	{* Submission Checklist *}
	{if $submissionChecklist}
		<div class="submission_checklist">
			<div class="page-header">
				<h2>
					{translate key="about.submissionPreparationChecklist"}
					{include file="frontend/components/editLink.tpl" page="management" op="settings" path="publication" anchor="submissionStage" sectionTitleKey="about.submissionPreparationChecklist"}
				</h2>
			</div>
			<p class="lead description">
				{translate key="about.submissionPreparationChecklist.description"}
			</p>
			<ul class="list-group">
				{foreach from=$submissionChecklist item=checklistItem}
					<li class="list-group-item">
						<span class="glyphicon glyphicon-check" aria-hidden="true"></span>
						<span class="item-content">{$checklistItem.content|nl2br}</span>
					</li>
				{/foreach}
			</ul>

		</div>
	{/if}
	{* /Submission Checklist *}

	{* Author Guidelines *}
	{if $currentJournal->getLocalizedSetting('authorGuidelines')}
		<div class="author_guidelines">
			<h2 class="page-header">
				<strong>
				{translate key="about.authorGuidelines"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="guidelines" sectionTitleKey="about.authorGuidelines"}
				</strong>
			</h2>
			{$currentJournal->getLocalizedSetting('authorGuidelines')|nl2br}
		</div>
	{/if}
	{* /Author Guidelines *}


	<div class="revisor_guidelines">
			<h2 class="page-header">
				<strong>
					
				{translate key="plugins.themes.compendium.revisorGuidelines"}
				{*include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="guidelines" sectionTitleKey="about.authorGuidelines"*}
				</strong>
			</h2>
			<p>Para lineamientos sobre el envío de los artículos, revisar el siguiente vínculo: </p>
			<p><a target="_blank" href="https://espolec-my.sharepoint.com/personal/madezamb_espol_edu_ec/Documents/COMPENDIUM%20GU%C3%8DAS/brochure%20espa%C3%B1ol%202017%20rev.pdf?slrid=05a52a9e-80ff-4000-623a-d532cda56e86" class="">Brochure español</a></p>
			{*$currentJournal->getLocalizedSetting('authorGuidelines')|nl2br*}
		</div>

	{* Copyright Notice *}
	{if $currentJournal->getLocalizedSetting('copyrightNotice')}
		<div class="copyright-notice">
			<h2 class="page-header">
				<strong>
					
				{translate key="about.copyrightNotice"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="policies" sectionTitleKey="about.copyrightNotice"}
				</strong>
			</h2>
			{$currentJournal->getLocalizedSetting('copyrightNotice')|nl2br}
		</div>
	{/if}
	{* /Copyright Notice *}

	<div class="privacy-statement">
			<h2 class="page-header">
				<strong>
					
				{translate key="plugins.themes.compendium.privacyStatement"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="journal" anchor="policies" sectionTitleKey="about.copyrightNotice"}
				</strong>
			</h2>
			<p>
				El artículo es un trabajo original y no duplica algún otro trabajo previamente publicado
				El artículo ha sido enviado únicamente a COMPENDIUM, no está bajo consideración o revisión por pares o aceptado para publicación en cualquier otra revista. COMPENDIUM se reserva el derecho de investigar las contribuciones por material que no sea original o debidamente referenciado. Al enviar el artículo a COMPENDIUM los autores aceptan las condiciones arriba expuestas.

			</p>
		</div>

</div><!-- .page -->

{include file="common/frontend/footer.tpl"}
