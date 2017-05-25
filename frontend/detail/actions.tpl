{block name='frontend_detail_actions_compare'}

{/block}

{block name='frontend_detail_actions_notepad'}
    <form action="{url controller='note' action='add' ordernumber=$sArticle.ordernumber}" method="post" class="action--form">
        <button type="submit"
           class="action--link link--notepad"
           title="{"{s name='DetailLinkNotepad'}{/s}"|escape}"
           data-ajaxUrl="{url controller='note' action='ajaxAdd' ordernumber=$sArticle.ordernumber}"
           data-text="{s name="DetailNotepadMarked"}{/s}">
           <span class="action--text">{s name="JJAddToWishlist"}Zur Wunschliste hinzufügen{/s}</span>  <i class="icon--plus3"></i>
        </button>
    </form>
{/block}

{block name='frontend_detail_actions_review'}

{/block}

{block name='frontend_detail_actions_voucher'}

{/block}
