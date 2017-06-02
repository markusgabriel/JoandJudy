{* Footer menu *}
{block name='frontend_index_footer_menu'}
    <div class="footer--columns block-group">
        {include file='frontend/index/footer-navigation.tpl'}
    </div>
{/block}

{* Copyright in the footer *}
{block name='frontend_index_footer_copyright'}
    <div class="footer--bottom">

        {* Vat info *}
        {block name='frontend_index_footer_vatinfo'}{/block}

        {block name='frontend_index_footer_minimal'}{/block}

        {* Shopware footer *}
        {block name="frontend_index_shopware_footer"}

            {* Copyright *}
            {block name="frontend_index_shopware_footer_copyright"}
                <div class="footer--copyright">
                    {s name="JJCopyright"}© JO & JUDY 2017{/s}
                </div>
            {/block}

            {* Social Media Links *}
            {block name="frontend_index_shopware_footer_social_media"}
                <div class="jj--footer-social-media">
                    <a href="{s name="JJFooterInstagramLink"}https://www.instagram.com/joandjudy/{/s}" title="{s name="JJFooterInstagramTitle"}Instagram{/s}" target="_blank"><i class="icon--instagram"></i></a>
                    <a href="{s name="JJFooterFacebookLink"}https://www.facebook.com/joandjudy/{/s}" title="{s name="JJFooterFacebookTitle"}Facebook{/s}" target="_blank"><i class="icon--facebook"></i></a>
                </div>
            {/block}

            {* Logo *}
            {block name="frontend_index_shopware_footer_logo"}{/block}
        {/block}
    </div>
{/block}
