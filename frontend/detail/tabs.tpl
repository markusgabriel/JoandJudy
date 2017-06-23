{extends file="parent:frontend/detail/tabs.tpl"}

{namespace name="frontend/detail/tabs"}

{* Tab navigation *}
{block name="frontend_detail_tabs_navigation"}
	<div class="tab--navigation">
	{block name="frontend_detail_tabs_navigation_inner"}
		{block name="frontend_detail_tabs_description"}{/block}
		{block name="frontend_detail_tabs_rating"}{/block}

        {if $sArticle.jj_article_detail_tab}
		{block name="frontend_detail_tabs_details"}
			<a href="#" class="tab--link" title="" data-tabName="details">
                {s namespace="frontend/detail" name='JJTabsDetailsTitle'}Details{/s}
			</a>
		{/block}
        {/if}

        {if $sArticle.jj_article_size_tab}
		{block name="frontend_detail_tabs_size"}
			<a href="#" class="tab--link" title="" data-tabName="size">
                {s namespace="frontend/detail" name='JJTabsSizeTitle'}Format{/s}
			</a>
		{/block}
        {/if}

		{block name="frontend_detail_tabs_shipping"}
			<a href="#" class="tab--link" title="" data-tabName="shipping">
                {s namespace="frontend/detail" name='JJTabsShippingTitle'}Versand{/s}
			</a>
		{/block}


	{/block}
	</div>
{/block}

{* Content list *}
{block name="frontend_detail_tabs_content"}
	<div class="tab--container-list">
		{block name="frontend_detail_tabs_content_inner"}
			{block name="frontend_detail_tabs_content_description"}{/block}

			{if $sArticle.jj_article_detail_tab}
			{block name="frontend_detail_tabs_content_scope"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_scope_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsScope"}{/s}</span>
                    {$sArticle.jj_article_detail_tab}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

			{if $sArticle.jj_article_size_tab}
			{block name="frontend_detail_tabs_content_material"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_material_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsMaterial"}{/s}</span>
                    {$sArticle.jj_article_size_tab}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

			{if $sArticle.jj_article_shipping_tab}
			{block name="frontend_detail_tabs_content_measures"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_measures_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsMeasures"}{/s}</span>
                    {$sArticle.jj_article_shipping_tab}
				</div>
				{/block}
			</div>
			{/block}
			{else}
			{block name="frontend_detail_tabs_content_measures"}
				<div class="tab--container">
					{block name="frontend_detail_tabs_content_measures_inner"}
						<div class="tab--content">
							<span class="jj--on-mobile">{s name="DetailTabsMeasures"}{/s}</span>
                            {s namespace="frontend/detail" name='JJTabsShippingText'}
								Wenn die Verpackung mit dem Produkt um die Wette strahlt – Deine neuen Produkte kommen in individuell und liebevoll verpackt bei dir Zuhause an.<br></br>Versandfertig in 1-3 Werktagen. Die genaue Lieferdauer zu deinem Zielort und Angaben zu den Versandkosten findest du in <a href="#" title="Versandinformationen" target="_blank">dieser Übersicht</a>.
							{/s}
						</div>
					{/block}
				</div>
			{/block}
			{/if}


		{/block}
	</div>
{/block}