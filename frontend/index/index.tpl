{extends file="parent:frontend/index/index.tpl"}

{block name='frontend_index_navigation'}
    <header class="header-main">
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
                    <a href="{if !$sUserLoggedIn}{url controller='account' action='login'}{else}{url controller='account' action='logout'}{/if}" title="{if !$sUserLoggedIn}Login{else}Logout{/if}">{if !$sUserLoggedIn}Login{else}Logout{/if}</a>
                </li>
                <li class="jj--search-link">
                    <span class="jj--open-search"><i class="icon--search"></i></span>
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

{/block}