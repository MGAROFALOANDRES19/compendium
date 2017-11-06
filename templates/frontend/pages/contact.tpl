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

<div id="main-content" class="page page_about">

	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.aboutContext"}

	{* Page Title *}
	<div class="page-header">
		<h1>{translate key="plugins.themes.compendium.contact_title"}</h1>
	</div>
	{* /Page Title *}

	<div class="row">
		<div class="col-xs-12 col-sm-6">
			<h3><strong>CONTACTO PRINCIPAL</strong></h3>
			<h3 class="contact_name">Mario Andrés Fernández</h3>
			<p>PhD</p>
			<p>FCSH-ESPOL</p>
			<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>
			<p><a href="mailto:mafernan@espol.edu.ec">mafernan@espol.edu.ec</a></p>
			<h3 class="contact_name">María de los Ángeles Zambrano </h3>
			<p>M.Sc.</p>
			<p>FCSH-ESPOL</p>
			<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>
			<p><a href="mailto:madezamb@espol.edu.ec">madezamb@espol.edu.ec</a></p>
			<p><strong>Teléfonos:</strong> {$pageFooter}</p>
		</div>
		<div class="col-xs-12 col-sm-6">
			<h3><strong>DIRECCIÓN POSTAL</strong></h3>
				<p>Campus Gustavo Galindo, km. 30.5 vía perimetral</p>
				<p>Facultad de Ciencias Sociales y Humanísticas</p>
				<p>Edificio Administrativo FCSH</p>
				<p>Escuela Superior Politécnica del Litoral</p>

				<h3><strong>CONTACTO DE ASISTENCIA</strong></h3>
				<h3 class="contact_name">Jorge Navarrete</h3>
				<p>Teléfono: 2269012</p>
				<p><a href="mailto:jornavar@espol.edu.ec">jornavar@espol.edu.ec</a></p>
			
		</div>
	</div>

	


	
</div><!-- .page -->

{include file="common/frontend/footer.tpl"}

