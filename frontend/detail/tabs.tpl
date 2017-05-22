{extends file="parent:frontend/detail/tabs.tpl"}

{namespace name="frontend/detail/tabs"}

{* Tab navigation *}
{block name="frontend_detail_tabs_navigation"}
	<div class="tab--navigation">
	{block name="frontend_detail_tabs_navigation_inner"}
		{block name="frontend_detail_tabs_description"}{/block}
		{block name="frontend_detail_tabs_rating"}{/block}

		{block name="frontend_detail_tabs_scope"}
			<a href="#" class="tab--link" title="" data-tabName="scope">
				{s name="DetailTabsScope"}{/s}
			</a>
		{/block}

		{block name="frontend_detail_tabs_material"}
			<a href="#" class="tab--link" title="" data-tabName="material">
				{s name="DetailTabsMaterial"}{/s}
			</a>
		{/block}

		{block name="frontend_detail_tabs_measures"}
			<a href="#" class="tab--link" title="" data-tabName="measures">
				{s name="DetailTabsMeasures"}{/s}
			</a>
		{/block}

		{block name="frontend_detail_tabs_delivery"}
			<a href="#" class="tab--link" title="" data-tabName="delivery">
				{s name="DetailTabsDelivery"}{/s}
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

			{if $sArticle.attr1}
			{block name="frontend_detail_tabs_content_scope"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_scope_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsScope"}{/s}</span>
				{$sArticle.attr1}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

			{if $sArticle.attr2}
			{block name="frontend_detail_tabs_content_material"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_material_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsMaterial"}{/s}</span>
				{$sArticle.attr2}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

			{if $sArticle.attr3}
			{block name="frontend_detail_tabs_content_measures"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_measures_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsMeasures"}{/s}</span>
				{$sArticle.attr3}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

			{if $sArticle.attr4}
			{block name="frontend_detail_tabs_content_delivery"}
			<div class="tab--container">
				{block name="frontend_detail_tabs_content_delivery_inner"}
				<div class="tab--content">
				<span class="jj--on-mobile">{s name="DetailTabsDelivery"}{/s}</span>
				{block name='frontend_detail_buy_laststock'}
					{$sArticle.attr4}
        {/block}
				</div>
				{/block}
			</div>
			{/block}
			{/if}

		{/block}
	</div>
{/block}