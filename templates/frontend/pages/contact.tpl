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

	<h2>DIRECCIÓN POSTAL</h2>
	<p>Campus Gustavo Galindo, km. 30.5 vía perimetral</p>
	<p>Facultad de Ciencias Sociales y Humanísticas</p>
	<p>Edificio Administrativo FCSH</p>
	<p>Escuela Superior Politécnica del Litoral</p>

	<h2>CONTACTO PRINCIPAL</h2>
	<h3 class="contact_name">Mario Andrés Fernández</h3>
	<p>PhD</p>
	<p>FCSH-ESPOL</p>
	<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>
	<p>Correo electrónico: mafernan@espol.edu.ec</p>
	<h3 class="contact_name">María de los Ángeles Zambrano </h3>
	<p>M.Sc.</p>
	<p>FCSH-ESPOL</p>
	<p>Km 30.5 Via Perimetral, Guayaquil - Ecuador</p>
	<p>Correo electrónico: madezamb@espol.edu.ec</p>

	<h2>CONTACTO DE ASISTENCIA</h2>
	<h3 class="contact_name">Jorge</h3>
	<p>Teléfono: 2269012</p>
	<p>Correo electrónico: vmruiz@espol.edu.ec</p>


	
</div><!-- .page -->

{include file="common/frontend/footer.tpl"}

