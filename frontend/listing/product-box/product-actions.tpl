{namespace name="frontend/listing/box_article"}

{* Product actions *}
{block name='frontend_listing_box_article_actions_content'}
    <div class="product--actions">

        {* Compare button *}
        {block name='frontend_listing_box_article_actions_compare'}
            {*{if {config name="compareShow"}}
                <form action="{url controller='compare' action='add_article' articleID=$sArticle.articleID _seo=false}" method="post">
                    <button type="submit"
                       title="{s name='ListingBoxLinkCompare'}{/s}"
                       class="product--action action--compare"
                       data-product-compare-add="true">
                        <i class="icon--compare"></i> {s name='ListingBoxLinkCompare'}{/s}
                    </button>
                </form>
            {/if}*}
        {/block}

        {* Note button *}
        {block name='frontend_listing_box_article_actions_save'}
           {* <form action="{url controller='note' action='add' ordernumber=$sArticle.ordernumber _seo=false}" method="post">
                <button type="submit"
                   title="{"{s name='DetailLinkNotepad' namespace='frontend/detail/actions'}{/s}"|escape}"
                   class="product--action action--note"
                   data-ajaxUrl="{url controller='note' action='ajaxAdd' ordernumber=$sArticle.ordernumber _seo=false}"
                   data-text="{s name="DetailNotepadMarked"}{/s}">
                    <i class="icon--heart"></i> <span class="action--text">{s name="DetailLinkNotepadShort" namespace="frontend/detail/actions"}{/s}</span>
                </button>
            </form>*}
        {/block}

        {* @deprecated: block no longer in use *}
        {block name='frontend_listing_box_article_actions_more'}{/block}

        {* @deprecated: misleading name *}
        {block name="frontend_listing_box_article_actions_inline"}{/block}

        {block name="frontend_detail_buy"}
        <form name="sAddToBasket" method="post" class="buybox--form" data-add-article="true" data-eventName="submit"{if $theme.offcanvasCart} data-showModal="false" data-addArticleUrl="{url controller=checkout action=ajaxAddArticleCart}"{/if}>
            {if $sArticle.sConfigurator&&$sArticle.sConfiguratorSettings.type==3}
                {foreach $sArticle.sConfigurator as $group}
                <input type="hidden" name="group[{$group.groupID}]" value="{$group.selected_value}"/>
                {/foreach}
            {/if}


            {* @deprecated - Product variants block *}
            {block name='frontend_detail_buy_variant'}{/block}

            <input type="hidden" name="sAdd" value="{$sArticle.ordernumber}"/>

            {$sCountConfigurator=$sArticle.sConfigurator|@count}

            {if (!isset($sArticle.active) || $sArticle.active)}
                {if $sArticle.isAvailable}
                    {block name="frontend_detail_buy_button_container"}


                        {* "Buy now" button *}
                        {block name="frontend_detail_buy_button"}
                            {if $sArticle.sConfigurator && !$activeConfiguratorSelection}
                            <button class="buybox--button block btn is--disabled is--icon-right is--large" disabled="disabled" aria-disabled="true" name="{s name="DetailBuyActionAdd"}{/s}"{if $buy_box_display} style="{$buy_box_display}"{/if}>
                            <i class="icon--plus3"></i>
                            </button>
                            {else}
                            <button class="buybox--button block btn is--primary is--icon-right is--center is--large" name="{s name="DetailBuyActionAdd"}{/s}"{if $buy_box_display} style="{$buy_box_display}"{/if}>
                            <i class="icon--plus3"></i>
                            </button>
                            {/if}
                        {/block}
                    {/block}
                {/if}
            {/if}
        </form>
        {/block}

        {block name='frontend_listing_box_article_actions_buy_now321'}
            {* Buy now button *}
            {if !$sArticle.sConfigurator && !$sArticle.variants && !$sArticle.sVariantArticle && !$sArticle.laststock == 1 && !($sArticle.notification == 1 && {config name="deactivatebasketonnotification"} == 1)}
            <a href=action="{url controller=checkout action=addArticle}"  title="{s name='ListingBoxLinkBuy'}{/s}" class="buynow">{s name='ListingBoxLinkBuy'}{/s}</a>
            {/if}
        {/block}
    </div>
{/block}
