<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body id="body" data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}
    
<!-- Preloader Start -->
<div id="preloader">
	<div class="spinners">
		<div class="spinner spinner-1"></div>
		<div class="spinner spinner-2"></div>
	</div>
</div>
<!-- Preloader End -->

<!-- Header Section Start -->
<div class="header--section">

	<!-- Header Navbar Start -->
	<nav class="header--navbar navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#headerNav" aria-expanded="false">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

				<!-- Logo Start -->
				<a href="{$WEB_ROOT}/index.php" class="navbar-brand">
					<img src="{$WEB_ROOT}/assets/img/logo.png" width="125" data-rjs="2">
				</a>
				<!-- Logo End -->
			</div>

			<div id="headerNav" class="collapse navbar-collapse navbar-right">
				<!-- Header Nav Links Start -->
				<ul class="header-nav--links nav navbar-nav">
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/index.html">Home</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/about.html">About Us</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/hosting-services.html">Hosting</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/domain.html">Domain</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/pricing.html">Price Plan</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/blog.html">Blog</a></li>
					<li><a href="https://www.themelooks.com/demo/hostlooks/html/preview/contact.html">Contact</a></li>
				</ul>
				<!-- Header Nav Links End -->

				<!-- Header Nav Form Start -->
				<form action="#" class="navbar-form navbar-left" data-form="validate">
					<div class="form-group">
						<input type="search" name="search" class="form-control" placeholder="Search" required>
					</div>

					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
				<!-- Header Nav Form End -->
			</div>
		</div>
	</nav>
	<!-- Header Navbar End -->
</div>
<!-- Header Section End -->

<section id="header">
    <div class="container">
		<ul class="top-nav">
			{if $languagechangeenabled && count($locales) > 1}
				<li>
					<a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
						{$activeLocale.localisedName}
						<b class="caret"></b>
					</a>
					<div id="languageChooserContent" class="hidden">
						<ul>
							{foreach $locales as $locale}
								<li>
									<a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
								</li>
							{/foreach}
						</ul>
					</div>
				</li>
			{/if}
			{if $loggedin}
				<li>
					<a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
						{$LANG.notifications}
						{if count($clientAlerts) > 0}<span class="label label-info">NEW</span>{/if}
						<b class="caret"></b>
					</a>
					<div id="accountNotificationsContent" class="hidden">
						<ul class="client-alerts">
						{foreach $clientAlerts as $alert}
							<li>
								<a href="{$alert->getLink()}">
									<i class="fa fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}warning{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
									<div class="message">{$alert->getMessage()}</div>
								</a>
							</li>
						{foreachelse}
							<li class="none">
								{$LANG.notificationsnone}
							</li>
						{/foreach}
						</ul>
					</div>
				</li>
				<li class="primary-action">
					<a href="{$WEB_ROOT}/logout.php" class="btn">
						{$LANG.clientareanavlogout}
					</a>
				</li>
			{else}
				<li>
					<a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
				</li>
				{if $condlinks.allowClientRegistration}
					<li>
						<a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
					</li>
				{/if}
				<li class="primary-action">
					<a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
						{$LANG.viewcart}
					</a>
				</li>
			{/if}
			{if $adminMasqueradingAsClient || $adminLoggedIn}
				<li>
					<a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
						<i class="fa fa-sign-out"></i>
					</a>
				</li>
			{/if}
		</ul>
    </div>
</section>


{if $templatefile == 'homepage'}
    <section id="home-banner" data-bg-img="{$WEB_ROOT}/templates/{$template}/img/home-banner-bg.png">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn btn-warning" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn btn-info" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>

{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
