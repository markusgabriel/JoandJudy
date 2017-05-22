{extends file="parent:widgets/emotion/index.tpl"}

{block name="widgets/emotion/index/container" append}
<div class="test {$emotion.attribute.jjEmotionClass}">
{/block}

{block name="widgets/emotion/index/container" prepend}
</div>
{/block}