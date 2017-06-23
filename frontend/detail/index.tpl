{extends file='parent:frontend/index/index.tpl'}

{* Custom header *}
{block name='frontend_index_header'}
    {include file="frontend/detail/header.tpl"}
{/block}

{block name="frontend_index_breadcrumb_content"}{/block}

{* Main content *}
{block name='frontend_index_content'}
    <div class="content product--details" itemscope itemtype="http://schema.org/Product"{if !{config name=disableArticleNavigation}} data-product-navigation="{url module="widgets" controller="listing" action="productNavigation"}" data-category-id="{$sArticle.categoryID}" data-main-ordernumber="{$sArticle.mainVariantNumber}"{/if} data-ajax-wishlist="true" data-compare-ajax="true"{if $theme.ajaxVariantSwitch} data-ajax-variants-container="true"{/if}>

        {* The configurator selection is checked at this early point
           to use it in different included files in the detail template. *}
        {block name='frontend_detail_index_configurator_settings'}

            {* Variable for tracking active user variant selection *}
            {$activeConfiguratorSelection = true}

            {if $sArticle.sConfigurator && ($sArticle.sConfiguratorSettings.type == 1 || $sArticle.sConfiguratorSettings.type == 2)}
                {* If user has no selection in this group set it to false *}
                {foreach $sArticle.sConfigurator as $configuratorGroup}
                    {if !$configuratorGroup.selected_value}
                        {$activeConfiguratorSelection = false}
                    {/if}
                {/foreach}
            {/if}
        {/block}

        <div class="product--detail-upper block-group">

            {* Product image *}
            {block name='frontend_detail_index_image_container'}
                <div class="product--image-container image-slider{if $sArticle.image && {config name=sUSEZOOMPLUS}} product--image-zoom{/if}"
                    {if $sArticle.image}
                     data-image-slider="true"
                     data-image-gallery="true"
                     data-maxZoom="{$theme.lightboxZoomFactor}"
                     data-thumbnails=".image--thumbnails"
                    {/if}>
                    {include file="frontend/detail/image.tpl"}
                </div>
            {/block}

            {* "Buy now" box container *}
            {block name='frontend_detail_index_buy_container'}
                <div class="jj--sticky-element-detail">
                    <div class="product--buybox block{if $sArticle.sConfigurator && $sArticle.sConfiguratorSettings.type==2} is--wide{/if}">

                        {* Product name *}
                        {block name='frontend_detail_index_name'}
                            <h1 class="product--title" itemprop="name">
                                {$sArticle.articleName}
                            </h1>
                        {/block}

                        {block name='frontend_detail_buy_laststock'}
                        {/block}

                        {* Product data *}
                        {block name='frontend_detail_index_buy_container_inner'}
                            <div itemprop="offers" itemscope itemtype="{if $sArticle.sBlockPrices}http://schema.org/AggregateOffer{else}http://schema.org/Offer{/if}" class="buybox--inner">

                                {block name='frontend_detail_index_data'}
                                    {if $sArticle.sBlockPrices}
                                        {$lowestPrice=false}
                                        {$highestPrice=false}
                                        {foreach $sArticle.sBlockPrices as $blockPrice}
                                            {if $lowestPrice === false || $blockPrice.price < $lowestPrice}
                                                {$lowestPrice=$blockPrice.price}
                                            {/if}
                                            {if $highestPrice === false || $blockPrice.price > $highestPrice}
                                                {$highestPrice=$blockPrice.price}
                                            {/if}
                                        {/foreach}

                                        <meta itemprop="lowPrice" content="{$lowestPrice}" />
                                        <meta itemprop="highPrice" content="{$highestPrice}" />
                                        <meta itemprop="offerCount" content="{$sArticle.sBlockPrices|count}" />
                                    {else}
                                        <meta itemprop="priceCurrency" content="{$Shop->getCurrency()->getCurrency()}"/>
                                    {/if}
                                    {include file="frontend/detail/data.tpl" sArticle=$sArticle sView=1}
                                {/block}

                                {block name='frontend_detail_index_after_data'}{/block}

                                {* Configurator drop down menu's *}
                                {block name="frontend_detail_index_configurator"}
                                    <div class="product--configurator">
                                        {if $sArticle.sConfigurator}
                                            {if $sArticle.sConfiguratorSettings.type == 1}
                                                {include file="frontend/detail/config_step.tpl"}
                                            {elseif $sArticle.sConfiguratorSettings.type == 2}
                                                {include file="frontend/detail/config_variant.tpl"}
                                            {else}
                                                {include file="frontend/detail/config_upprice.tpl"}
                                            {/if}
                                        {/if}
                                    </div>
                                {/block}

                                {* Product description *}
                                {block name='frontend_detail_description_text'}
                                    <div class="product--description" itemprop="description">
                                        {$sArticle.description_long}
                                    </div>
                                {/block}

                                {* Include buy button and quantity box *}
                                {block name="frontend_detail_index_buybox"}
                                    {include file="frontend/detail/buy.tpl"}
                                {/block}

                                {* Product actions *}
                                {block name="frontend_detail_index_actions"}
                                    <nav class="product--actions">
                                        {include file="frontend/detail/actions.tpl"}
                                    </nav>
                                {/block}

                                {block name="frontend_detail_index_detail"}
                                    {* Tab navigation *}
                                    {block name="frontend_detail_index_tabs"}
                                        {include file="frontend/detail/tabs.tpl"}
                                    {/block}
                                {/block}

                            </div>
                        {/block}

                    </div>
                </div>
            {/block}
        </div>

        {* Product bundle hook point *}
        {block name="frontend_detail_index_bundle"}{/block}

        

        {* Crossselling tab panel *}
        {block name="frontend_detail_index_tabs_cross_selling"}

            {$showAlsoViewed = {config name=similarViewedShow}}
            {$showAlsoBought = {config name=alsoBoughtShow}}

            <div class="jj--sticky-stop tab-menu--cross-selling"{if $sArticle.relatedProductStreams} data-scrollable="true"{/if}>

                {* Tab navigation *}
                {block name="frontend_detail_index_tabs_navigation"}
                    <div class="tab--navigation">
                        {block name="frontend_detail_index_tabs_navigation_inner"}
                            {block name="frontend_detail_index_related_similiar_tabs"}

                                {* Tab navigation - Accessory products *}
                                {block name="frontend_detail_tabs_entry_related"}
                                    {if $sArticle.sRelatedArticles && !$sArticle.crossbundlelook}
                                        <a href="#content--related-products" title="{s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}" class="tab--link">
                                            {s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}
                                            <span class="product--rating-count-wrapper">
                                                <span class="product--rating-count">{$sArticle.sRelatedArticles|@count}</span>
                                            </span>
                                        </a>
                                    {/if}
                                {/block}

                                {* Similar products *}
                                {block name="frontend_detail_index_recommendation_tabs_entry_similar_products"}
                                    {if count($sArticle.sSimilarArticles) > 0}
                                        <a href="#content--similar-products" title="{s name="DetailRecommendationSimilarLabel"}{/s}" class="tab--link">{s name="DetailRecommendationSimilarLabel"}{/s}</a>
                                    {/if}
                                {/block}
                            {/block}

                            {* Customer also bought *}
                            {block name="frontend_detail_index_tabs_entry_also_bought"}
                                {if $showAlsoBought}
                                    <a href="#content--also-bought" title="{s name="DetailRecommendationAlsoBoughtLabel"}{/s}" class="tab--link">{s name="DetailRecommendationAlsoBoughtLabel"}{/s}</a>
                                {/if}
                            {/block}

                            {* Customer also viewed *}
                            {block name="frontend_detail_index_tabs_entry_also_viewed"}
                                {if $showAlsoViewed}
                                    <a href="#content--customer-viewed" title="{s name="DetailRecommendationAlsoViewedLabel"}{/s}" class="tab--link">{s name="DetailRecommendationAlsoViewedLabel"}{/s}</a>
                                {/if}
                            {/block}

                            {* Related product streams *}
                            {block name="frontend_detail_index_tabs_entry_related_product_streams"}
                                {foreach $sArticle.relatedProductStreams as $key => $relatedProductStream}
                                    <a href="#content--related-product-streams-{$key}" title="{$relatedProductStream.name}" class="tab--link">{$relatedProductStream.name}</a>
                                {/foreach}
                            {/block}
                        {/block}
                    </div>
                {/block}

                {* Tab content container *}
                {block name="frontend_detail_index_outer_tabs"}
                    <div class="tab--container-list">
                        {block name="frontend_detail_index_inner_tabs"}
                            {block name='frontend_detail_index_before_tabs'}{/block}

                            {* Accessory articles *}
                            {block name="frontend_detail_index_tabs_related"}
                                {if $sArticle.sRelatedArticles && !$sArticle.crossbundlelook}
                                    <div class="tab--container" data-tab-id="related">
                                        {block name="frontend_detail_index_tabs_related_inner"}
                                            <div class="tab--header">
                                                <a href="#" class="tab--title" title="{s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}">
                                                    {s namespace="frontend/detail/tabs" name='DetailTabsAccessories'}{/s}
                                                    <span class="product--rating-count-wrapper">
                                                        <span class="product--rating-count">{$sArticle.sRelatedArticles|@count}</span>
                                                    </span>
                                                </a>
                                            </div>
                                            <div class="tab--content content--related">{include file="frontend/detail/tabs/related.tpl"}</div>
                                        {/block}
                                    </div>
                                {/if}
                            {/block}

                            {* Similar products slider *}
                            {if $sArticle.sSimilarArticles}
                                {block name="frontend_detail_index_tabs_similar"}
                                    <div class="tab--container" data-tab-id="similar">
                                        {block name="frontend_detail_index_tabs_similar_inner"}
                                            <div class="tab--header">
                                                <a href="#" class="tab--title" title="{s name="DetailRecommendationSimilarLabel"}{/s}">{s name="DetailRecommendationSimilarLabel"}{/s}</a>
                                            </div>
                                            <div class="tab--content content--similar">{include file='frontend/detail/tabs/similar.tpl'}</div>
                                        {/block}
                                    </div>
                                {/block}
                            {/if}

                            {* "Customers bought also" slider *}
                            {if $showAlsoBought}
                                {block name="frontend_detail_index_tabs_also_bought"}
                                    <div class="tab--container" data-tab-id="alsobought">
                                        {block name="frontend_detail_index_tabs_also_bought_inner"}
                                            <div class="tab--header">
                                                <a href="#" class="tab--title" title="{s name='DetailRecommendationAlsoBoughtLabel'}{/s}">{s name='DetailRecommendationAlsoBoughtLabel'}{/s}</a>
                                            </div>
                                            <div class="tab--content content--also-bought">{action module=widgets controller=recommendation action=bought articleId=$sArticle.articleID}</div>
                                        {/block}
                                    </div>
                                {/block}
                            {/if}

                            {* "Customers similar viewed" slider *}
                            {if $showAlsoViewed}
                                {block name="frontend_detail_index_tabs_also_viewed"}
                                    <div class="tab--container" data-tab-id="alsoviewed">
                                        {block name="frontend_detail_index_tabs_also_viewed_inner"}
                                            <div class="tab--header">
                                                <a href="#" class="tab--title" title="{s name='DetailRecommendationAlsoViewedLabel'}{/s}">{s name='DetailRecommendationAlsoViewedLabel'}{/s}</a>
                                            </div>
                                            <div class="tab--content content--also-viewed">{action module=widgets controller=recommendation action=viewed articleId=$sArticle.articleID}</div>
                                        {/block}
                                    </div>
                                {/block}
                            {/if}

                            {* Related product streams *}
                            {foreach $sArticle.relatedProductStreams as $key => $relatedProductStream}
                                {block name="frontend_detail_index_tabs_related_product_streams"}
                                    <div class="tab--container" data-tab-id="productStreamSliderId-{$relatedProductStream.id}">
                                        {block name="frontend_detail_index_tabs_related_product_streams_inner"}
                                            <div class="tab--header">
                                                <a href="#" class="tab--title" title="{$relatedProductStream.name}">{$relatedProductStream.name}</a>
                                            </div>
                                            <div class="tab--content content--related-product-streams-{$key}">
                                                {include file='frontend/detail/tabs/product_streams.tpl'}
                                            </div>
                                        {/block}
                                    </div>
                                {/block}
                            {/foreach}

                            {block name='frontend_detail_index_after_tabs'}{/block}
                        {/block}
                    </div>
                {/block}
            </div>
        {/block}
    </div>
{/block}
