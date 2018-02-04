{**
 * templates/frontend/pages/about.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view information about a journal.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.aboutContext"}

<div id="main-content" class="page page_contact">

	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.aboutContext"}

	{* Page Title *}
	<div class="page-header">
		<h1>{translate key="plugins.themes.compendium.contact_title"}</h1>
	</div>
	{* /Page Title *}

	<div class="row">
		<div class="col-xs-12 col-sm-6">
			<h2><strong>CONTACTO PRINCIPAL</strong></h2>
			<h3 class="contact_name">{if $contactName}
				
					{$contactName|escape}
				
				{/if}<span> if $contactTitle}
				, {$contactTitle|escape}
				{/if}</span></h3>
			<p>Editor</p>
			<p>{if $contactEmail}
					<a href="mailto:{$contactEmail|escape}">
						{$contactEmail|escape}
					</a>
				{/if}</p>
			<p>{if $contactAffiliation}
				<div class="affiliation">
					{$contactAffiliation|strip_unsafe_html}
				</div>
				{/if}</p>
			<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>
			<h3 class="contact_name">María de los Ángeles Zambrano, <span>M.Sc.</span> </h3>
			<p>Coordinadora</p>
			<p><a href="mailto:madezamb@espol.edu.ec">madezamb@espol.edu.ec</a></p>
			<p>FCSH-ESPOL</p>
			<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>

			<h2>Teléfonos Revista:</h2>
			<p>{if $contactPhone}
			  {$contactPhone|escape}
			  {/if}}</p>

			

			
		</div>
		<div class="col-xs-12 col-sm-6">
			<h2><strong>DIRECCIÓN POSTAL</strong></h2>
				{if $mailingAddress}
			<div class="address">
				{$mailingAddress|nl2br|strip_unsafe_html}
			</div>
		{/if}

				<h2><strong>CONTACTO DE ASISTENCIA</strong></h2>
				<h3 class="contact_name">{if $supportName}
					{$supportName|escape}
				{/if}</h3>
				<p>{if $supportPhone}
				<div class="phone">
					<span class="label">
						{translate key="about.contact.phone"}
					</span> : 
					<span class="value">
						{$supportPhone|escape}
					</span>
				</div>
				{/if}</p>
				<p>{if $supportEmail}
				<div class="email">
					<a href="mailto:{$supportEmail|escape}">
						{$supportEmail|escape}
					</a>
				</div>
				{/if}</p>

				<h2 class="mail_compendium">Email Revista:</h2>
			<p><a href="mailto:compendium@espol.edu.ec">compendium@espol.edu.ec</a></p>
			
		</div>
	</div>
	
</div><!-- .page -->

{include file="common/frontend/footer.tpl"}

