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
    <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{translate key="navigation.about"} <span class="glyphicon glyphicon-triangle-right"></span></a>
    <ul class="dropdown-menu">
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about"}">
          {translate key="about.aboutContext"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">
          {translate key="about.editorialTeam"}
        </a>
      </li>
      <li>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">
          {translate key="about.submissions"}
        </a>
      </li>
    {if $currentJournal->getSetting('mailingAddress') || $currentJournal->getSetting('contactName')}
    <li id="item-desplegable">

      <a href="#">Otro <span class="glyphicon glyphicon-triangle-right"></span></a>


    </li>
     <ul id="menu-desplegable" class="dropdown-menu">
        <li>
          <a href="#">Patrocinadores de la revista</a>
        </li>
        <li>
          <a href="#">Mapa del sitio</a>
        </li>
        <li>
          <a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="aboutThisPublishingSystem"}">
          Acerca del sistema de publicacion
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
  <li>
    <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="current"}">
      {translate key="navigation.current"}
    </a>
  </li>
  <li>
    <a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
      {translate key="navigation.archives"}
    </a>
  </li>
  {/if}

    {/if}

    {if $enableAnnouncements}
    <li>
      <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement"}">
        {translate key="announcement.announcements"}
      </a>
    </li>
    {/if}
  </ul>
</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
