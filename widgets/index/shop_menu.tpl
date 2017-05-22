{* Language switcher *}
{block name='frontend_index_actions_active_shop'}
    {if $shop && $languages|count > 1}
        <div class="jj--language-switch top-bar--language navigation--entry">
            {block name='frontend_index_actions_active_shop_top_bar_language'}
                {if $languages|count > 1}
                    <form method="post" class="language--form">
                        {block name="frontend_index_actions_active_shop_language_form_content"}
                            <div class="field--select">
                                {block name="frontend_index_actions_active_shop_language_form_select"}
                                    <select name="__shop" class="language--select" data-auto-submit="true">
                                        {foreach $languages as $language}
                                            <option value="{$language->getId()}" {if $language->getId() === $shop->getId()}selected="selected"{/if}>
                                                {$language->getName()}
                                            </option>
                                        {/foreach}
                                    </select>
                                {/block}
                                <input type="hidden" name="__redirect" value="1">
                                {block name="frontend_index_actions_active_shop_inline"}{/block}
                                <span class="arrow"></span>
                            </div>
                        {/block}
                    </form>
                {/if}
            {/block}
        </div>
    {/if}
{/block}