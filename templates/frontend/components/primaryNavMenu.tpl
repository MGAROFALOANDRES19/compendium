{**
* templates/frontend/components/primaryNavMenu.tpl
*
* Copyright (c) 2014-2017 Simon Fraser University Library
* Copyright (c) 2003-2017 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Primary navigation menu list for OJS
*}
<nav id="nav-main-menu" class="mynavbar navbar navbar-default">

  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="{$homeUrl}" class="navbar-brand navbar-brand-logo">
        <img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"{else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if}>
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul id="main-navigation" class="nav navbar-nav">
  {* Primary site navigation *}
  <nav id="nav-menu" class="navbar-collapse collapse" aria-label="{translate|escape key="common.navigation.site"}">
    {* Primary navigation menu for current application *}


    {* Search form *}
    {if !$noContextsConfigured}
      <div class="pull-md-right">
        {include file="frontend/components/searchForm_simple.tpl"}
      </div>
    {/if}
  </nav>
  <li class="dropdown">
    <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{translate key="plugins.themes.compendium.about"} <span class="glyphicon glyphicon-triangle-right"></span></a>
    <ul class="dropdown-menu">
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}">
          {translate key="plugins.themes.compendium.revista"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">
          {translate key="plugins.themes.compendium.equipo"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="indexaciones"}">
          {translate key="plugins.themes.compendium.indexaciones"}
        </a>
      </li>
      {if $enableAnnouncements}
    <li>
      <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement"}">
        {translate key="announcement.announcements"}
      </a>
    </li>
    {/if}
      {*<li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">
          {translate key="about.submissions"}Directrices
        </a>
      </li>*}
    {if $currentJournal->getSetting('mailingAddress') || $currentJournal->getSetting('contactName')}
    <li class="dropdown" id="item-desplegable">

      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">{translate key="plugins.themes.compendium.otros"} <span class="glyphicon glyphicon-triangle-right"></span></a>


    </li>
     <ul id="menu-desplegable" class="dropdown-menu">

        <li>

          

          <a href="#">{translate key="plugins.themes.compendium.siteMap"}</a>
        </li>
        <li>
          <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="aboutThisPublishingSystem"}">
            {translate key="plugins.themes.compendium.aboutThisSystem"}
          
        </a>
        </li>

      </ul>

    {*<li>
      <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">
        {translate key="about.contact"}
      </a>
    </li>*}
      {/if}
    </ul>

  {if $currentJournal}

  {if $currentJournal->getSetting('publishingMode') != $smarty.const.PUBLISHING_MODE_NONE}
  <li class="dropdown">
    <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="current"}" class="item-padding dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
      {translate key="plugins.themes.compendium.trackPaper"}<span class="glyphicon glyphicon-triangle-right"></span>


    </a>

    <ul class="dropdown-menu">
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="login"}">
          {translate key="plugins.themes.compendium.send_online"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">
          {translate key="plugins.themes.compendium.guides"}
        </a>
      </li>

    </ul>
  </li>
  <li>
    <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
      {translate key="plugins.themes.compendium.volumenes"}
    </a>
  </li>
  {/if}


  <li>
      <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">
        {translate key="about.contact"}
      </a>
    </li>

    <hr class="linea-menu">


    <li>
      <a target="_blank" href='
      {if $currentLocale|replace:"_":"-" eq "es-ES"}
        https://espolec-my.sharepoint.com/personal/madezamb_espol_edu_ec/Documents/COMPENDIUM%20GU%C3%8DAS/brochure%20espa%C3%B1ol%202017.pdf?slrid=e3a42a9e-20ec-4000-623a-deb78cfe5dab
         {else}
         https://espolec-my.sharepoint.com/personal/madezamb_espol_edu_ec/Documents/COMPENDIUM%20GU%C3%8DAS/brochure%20en%20ingles%202017.pdf?slrid=eba42a9e-a08b-4000-623a-dd6da17215de
      {/if}
      ' class="">
        {translate key="plugins.themes.compendium.authors_guide"}
      </a>
    </li>

    <li>
      <a target="_blank" href="https://espolec-my.sharepoint.com/personal/madezamb_espol_edu_ec/Documents/COMPENDIUM%20GU%C3%8DAS/brochure%20espa%C3%B1ol%202017%20rev.pdf?slrid=05a52a9e-80ff-4000-623a-d532cda56e86" class="">
        {translate key="plugins.themes.compendium.revisor_guide"}
      </a>
    </li>


    <!--<hr class="linea-menu">-->



    {/if}




  </ul>
</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
