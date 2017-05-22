{extends file="parent:frontend/index/logo-container.tpl"}

<div class="jj--logo-container" role="banner">

    {* Main shop logo *}
    {block name='frontend_index_logo'}
    <a class="jj--logo-link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {"{s name='IndexLinkDefault' namespace="frontend/index/index"}{/s}"|escape}">{config name=shopName}</a>
    {/block}

</div>
