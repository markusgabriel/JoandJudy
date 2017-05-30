{namespace name="frontend/account/login"}
<div class="register--login content block">

    {* Error messages *}
    {block name='frontend_register_login_error_messages'}
        {if $sErrorMessages}
            <div class="account--error">
                {include file="frontend/register/error_message.tpl" error_messages=$sErrorMessages}
            </div>
        {/if}
    {/block}

    {* Existing customer *}
    {block name='frontend_register_login_customer'}
        <div class="register--existing-customer panel">

            <h2 class="panel--title jj--headline-center">{s name="JJLoginHeaderExistingCustomer"}Login{/s}</h2>
            <div class="panel--body is--wide">
                {block name='frontend_register_login_form'}
                    {if $register.personal.sValidation}
                        {$url = {url controller=account action=login sTarget=$sTarget sTargetAction=$sTargetAction sValidation=$register.personal.sValidation} }
                    {else}
                        {$url = {url controller=account action=login sTarget=$sTarget sTargetAction=$sTargetAction} }
                    {/if}

                    <form name="sLogin" method="post" action="{$url}">
                        {if $sTarget}<input name="sTarget" type="hidden" value="{$sTarget|escape}" />{/if}

                        {block name='frontend_register_login_description'}
                            {*<div class="register--login-description">{s name="LoginHeaderFields"}{/s}</div>*}
                        {/block}

                        {block name='frontend_register_login_input_email'}
                            <div class="register--login-email">
                                <input name="email" placeholder="{s name="LoginPlaceholderMail"}{/s}" type="email" autocomplete="email" tabindex="1" value="{$sFormData.email|escape}" id="email" class="register--login-field{if $sErrorFlag.email} has--error{/if}" />
                            </div>
                        {/block}

                        {block name='frontend_register_login_input_password'}
                            <div class="register--login-password">
                                <input name="password" placeholder="{s name="LoginPlaceholderPassword"}{/s}" type="password" autocomplete="current-password" tabindex="2" id="passwort" class="register--login-field{if $sErrorFlag.password} has--error{/if}" />
                            </div>
                        {/block}

                        {block name='frontend_register_login_input_lostpassword'}
                            <div class="register--login-lostpassword">
                                <a href="{url controller=account action=password}" title="{"{s name="LoginLinkLostPassword"}{/s}"|escape}">
                                    {s name="LoginLinkLostPassword"}{/s}
                                </a>
                            </div>
                        {/block}

                        {block name='frontend_register_login_input_form_submit'}
                            <div class="register--login-action">
                                <button type="submit" class="register--login-btn btn is--large" name="Submit">{s name="LoginLinkLogon"}{/s}</button>
                            </div>
                        {/block}

                        {block name='frontend_register_login_input_form_no_account'}
                            {*<span class="jj--open-register">{s name="JJLoginLinkOpenRegister"}No account yet? <span>Register here</span>.{/s}</span>*}
                        {/block}

                    </form>
                {/block}
            </div>

        </div>
    {/block}

    {* New customer *}
    {block name='frontend_register_login_newcustomer'}
       {* <div class="register--new-customer">
            <a href="#registration"
               class="new-customer-btn btn is--icon-right"
               id="new-customer-action"
               data-collapseTarget="#registration">
                {s name="LoginLinkRegister2"}{/s}
            </a>
        </div>*}
    {/block}
</div>
