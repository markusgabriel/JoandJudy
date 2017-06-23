{block name="frontend_index_minimal_footer"}
    <div class="container footer-minimal">

        {* Service menu *}
        {block name="frontend_index_minimal_footer_menu"}
            <div class="footer--service-menu">
                {include file="widgets/index/menu.tpl" sGroup=gLeft}
            </div>
        {/block}

        {* Copyright *}
        {block name="frontend_index_shopware_footer_copyright"}
            <div class="footer--copyright">
                {s name="JJCopyright"}© JO & JUDY 2017{/s}
            </div>
        {/block}
    </div>
{/block}
