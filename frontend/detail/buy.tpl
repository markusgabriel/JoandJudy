{extends file="parent:frontend/detail/buy.tpl"}

{* "Buy now" button *}
{block name="frontend_detail_buy_button"}
  {if $sArticle.sConfigurator && !$activeConfiguratorSelection}
    <button class="buybox--button btn is--disabled" disabled="disabled" aria-disabled="true" name="{s name="DetailBuyActionAdd"}{/s}"{if $buy_box_display} style="{$buy_box_display}"{/if}>
			{s name="DetailBuyActionAdd"}{/s}
    </button>
  {else}
    <button class="buybox--button btn" name="{s name="DetailBuyActionAdd"}{/s}"{if $buy_box_display} style="{$buy_box_display}"{/if}>
			{s name="DetailBuyActionAdd"}{/s}
    </button>
  {/if}
{/block}