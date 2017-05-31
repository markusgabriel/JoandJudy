<header class="header-main">

    {* Hide top bar navigation *}
    {block name='frontend_index_top_bar_container'}{/block}

    <div class="inner">

        {* Main shop logo *}
        {block name='frontend_index_logo'}
            <a class="jj--logo-link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">{config name=shopName}</a>
        {/block}

        <div class="container header--navigation">

            {* Logo container *}
            {block name='frontend_index_logo_container'}
                <div class="logo-main block-group" role="banner">

                    {* Main shop logo *}
                    {block name='frontend_index_logo'}
                        <a class="jj--logo-link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">{config name=shopName}</a>
                    {/block}

                    {* Support Info *}
                    {block name='frontend_index_logo_supportinfo'}
                        {*<div class="logo--supportinfo block">
                            {s name='RegisterSupportInfo' namespace='frontend/register/index'}{/s}
                        </div>*}
                    {/block}

                    {* Trusted Shops *}
                    {block name='frontend_index_logo_trusted_shops'}

                    {/block}
                </div>
            {/block}

            {* Hide Shop navigation *}
            {block name='frontend_index_shop_navigation'}{/block}
        </div>
    </div>
</header>

{* Hide Maincategories navigation top *}
{block name='frontend_index_navigation_categories_top'}{/block}
