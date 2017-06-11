{extends file="parent:frontend/index/index.tpl"}

{* Hide Sidebar *}
{block name='frontend_index_content_left'}{/block}

{block name='frontend_index_navigation'}
    <header class="header-main jj--header-parallax">
        <div class="inner">

            <div class="jj--menu-open">
                <span class="top"></span>
                <span class="mid1"></span>
                <span class="mid2"></span>
                <span class="bottom"></span>
            </div>

            {* Main shop logo *}
            {block name='frontend_index_logo'}
            <a class="jj--logo-link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">{config name=shopName}</a>
            {/block}

            {* Include the top bar navigation *}
            {block name='frontend_index_top_bar_container'}
                {include file="frontend/index/topbar-navigation.tpl"}
            {/block}

            {block name='frontend_index_header_navigation'}
                {* Shop navigation *}
                {block name='frontend_index_shop_navigation'}
                    {include file="frontend/index/shop-navigation.tpl"}
                {/block}

                {block name='frontend_index_container_ajax_cart'}
                    <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
                {/block}
            {/block}

            <ul class="jj--shop-navigation">
                <li class="jj--login-link">
                    <a href="{url controller='account' action='index'}" title="Account">{if !$sUserLoggedIn}<i class="icon--users"></i>{else}<i class="icon--account"></i>{/if}</a>
                </li>
                {*{if !$sUserLoggedIn}
                    <li class="jj--login-link">
                        *}{*<a href="{if !$sUserLoggedIn}{url controller='account' action='login'}{else}{url controller='account' action='logout'}{/if}" title="{if !$sUserLoggedIn}Login{else}Logout{/if}">{if !$sUserLoggedIn}Login{else}Logout{/if}</a>*}{*
                        <a href="{url controller='account' action='login'}" title="Login">Login</a>
                    </li>
                {else}
                    <li>
                        <a href="{url controller='account' action='index'}" title="Account">{s name='JJAccountHeaderWelcome'}Hello{/s} {$sUserData.additional.user.firstname|escapeHtml}</a>
                    </li>
                {/if}*}
                <li class="jj--search-link">
                    <span class="jj--open-search"><i class="jj--icon-lupe"></i></span>
                </li>
                {*<li class="jj--cart-link">
                    <a href="{url controller='checkout' action='cart'}">
                        <i class="icon--bag"></i>
                    </a>
                </li>*}
            </ul>

        </div>
    </header>

    {* Maincategories navigation top *}
    {block name='frontend_index_navigation_categories_top'}
    <div class="jj--flyout-navigation-wrapper">
        <div class="jj--flyout-navigation">
            <nav class="jj--navigation-main">
                <div data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                    {block name="frontend_index_navigation_categories_top_include"}
                        {include file='frontend/index/main-navigation.tpl'}
                    {/block}
                </div>
            </nav>
        </div>
    </div>
    {/block}

    {if $sCategoryContent.media.source}
        <div class="jj--page-header-banner jj--header-parallax">
            <img src="{$sCategoryContent.media.source}">
        </div>
    {elseif $sCustomPage.attribute.jj_page_banner}
        <div class="jj--page-header-banner jj--header-parallax">
            <img src="{$sCustomPage.attribute.jj_page_banner}">
        </div>
    {else}
        <div class="jj--page-header-banner jj--header-parallax">
            <img src="{s name="JJFallbackHeaderBanner" namespace="JJHeaderBanner"}{/s}">
        </div>
    {/if}

    {* Search form *}
    {block name='frontend_index_search'}
        <div class="jj--search-container">
            <div class="jj--search-header-banner jj--header-parallax">
                <img src="{s name="JJFallbackHeaderBanner" namespace="JJHeaderBanner"}{/s}">
            </div>
            <div class="jj--close-search"><i class="jj--icon-close"></i></div>
            <div class="jj--search-form" role="menuitem" data-search="true" aria-haspopup="true"{if $theme.focusSearch && {controllerName|lower} == 'index'} data-activeOnStart="true"{/if}>
                <a class="btn entry--link entry--trigger" href="#show-hide--search" title="{"{s namespace='frontend/index/search' name="IndexTitleSearchToggle"}{/s}"|escape}">
                    <i class="icon--search"></i>

                    {block name='frontend_index_search_display'}
                        <span class="search--display">{s namespace='frontend/index/search' name="IndexSearchFieldSubmit"}{/s}</span>
                    {/block}
                </a>

                {block name='frontend_index_search_include'}
                    {include file="frontend/index/search.tpl"}
                {/block}
            </div>
        </div>
    {/block}

{/block}