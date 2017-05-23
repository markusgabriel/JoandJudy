    $('.jj--menu-open').on('click', function() {
        $(this).toggleClass('jj--menu-close');
        $('.jj--flyout-navigation').toggleClass('is-active');
        $('body').toggleClass('menu-open');
    });
    $('.jj--menu-close').on('click', function() {
        $('.jj--flyout-navigation').removeClass('is-active');
        $('body').removeClass('menu-open');
    });
    $('.jj--open-filter').on('click', function() {
        $('.listing--actions').addClass('is--active');
    });
    $('.jj--close-filter').on('click', function() {
        $('.listing--actions').removeClass('is--active');
    });
    /* $('.filter--btn-apply').on('click', function() {
        $('.listing--actions').removeClass('is--active');
    }); */

    var stickyElement = '.jj--sticky-element',
        bottomElement = '.jj--sticky-stop';
    if ($(stickyElement).length) {
        $(stickyElement).each(function() {
            var fromTop = $(this).offset().top, fromBottom = $(document).height() - ($(this).offset().top + $(this).outerHeight()),
                stopOn = $(document).height() - ($(bottomElement).offset().top) + ($(this).outerHeight() - $(this).height());
            if ((fromBottom - stopOn) > 1) {
                $(this).css('width', $(this).width()).css('top', 0).css('position', '');
                $(this).affix({
                    offset: {top: fromTop, bottom: stopOn}
                }).on('affix.bs.affix', function() { $(this).css('top', 0).css('position', ''); });
            }
            $(window).trigger('scroll');
        });
    }

    StateManager.removePlugin('.tab-menu--product .tab--container', 'swOffcanvasButton', ['xs']);
// StateManager.removePlugin('.tab-menu--cross-selling .tab--header', 'swCollapsePanel', {'contentSiblingSelector': '.tab--content'}, ['xs', 's']);
// StateManager.addPlugin('.tab-menu--cross-selling', 'swTabMenu', ['xs', 's', 'm', 'l', 'xl']);
