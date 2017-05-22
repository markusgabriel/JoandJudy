<?php

namespace Shopware\Themes\JoandJudy;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
Jo & Judy 
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
Markus Gabriel
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'
MIT
SHOPWARE_EOD;

protected $javascript = array(
    //'src/js/jj-affix.js',
    'src/js/jj-functions.js'
);

    /**
     * Holds default theme colors
     *
     * @var array
     */
    private $themeColorDefaults = [
        "brand-primary" => "#97694b",
        "brand-primary-light" => "saturate(lighten(@brand-primary,12%), 5%)",
        "brand-secondary" => "#5F7285",
        "brand-secondary-dark" => "darken(@brand-secondary, 15%)",
        "gray" => "#F5F5F8",
        "gray-light" => "lighten(@gray, 1%)",
        "gray-dark" => "darken(@gray-light, 10%)",
        "border-color" => "@gray-dark",
        "highlight-success" => "#2ECC71",
        "highlight-error" => "#E74C3C",
        "highlight-notice" => "#F1C40F",
        "highlight-info" => "#4AA3DF",
        "body-bg" => "darken(@gray-light, 5%)",
        "overlay-bg" => "#000000",
        "overlay-opacity" => "0.7",
        "text-color" => "@brand-secondary",
        "text-color-dark" => "@brand-secondary-dark",
        "link-color" => "@brand-primary",
        "link-hover-color" => "darken(@link-color, 10%)",
        "rating-star-color" => "@highlight-notice",
        "btn-default-top-bg" => "#FFFFFF",
        "btn-default-bottom-bg" => "@gray-light",
        "btn-default-hover-bg" => "#FFFFFF",
        "btn-default-text-color" => "@text-color",
        "btn-default-hover-text-color" => "@brand-primary",
        "btn-default-border-color" => "@border-color",
        "btn-default-hover-border-color" => "@brand-primary",
        "btn-primary-top-bg" => "@brand-primary-light",
        "btn-primary-bottom-bg" => "@brand-primary",
        "btn-primary-hover-bg" => "@brand-primary",
        "btn-primary-text-color" => "#FFFFFF",
        "btn-primary-hover-text-color" => "@btn-primary-text-color",
        "btn-secondary-top-bg" => "@brand-secondary",
        "btn-secondary-bottom-bg" => "@brand-secondary-dark",
        "btn-secondary-hover-bg" => "@brand-secondary-dark",
        "btn-secondary-text-color" => "#FFFFFF",
        "btn-secondary-hover-text-color" => "@btn-secondary-text-color",
        "panel-header-bg" => "@gray-light",
        "panel-header-color" => "@text-color",
        "panel-border" => "@border-color",
        "panel-bg" => "#FFFFFF",
        "label-color" => "@text-color",
        "input-bg" => "@gray-light",
        "input-color" => "@brand-secondary",
        "input-placeholder-color" => "lighten(@text-color, 15%)",
        "input-border" => "@border-color",
        "input-focus-bg" => "#FFFFFF",
        "input-focus-border" => "@brand-primary",
        "input-focus-color" => "@brand-secondary",
        "input-error-bg" => "desaturate(lighten(@highlight-error, 38%), 20%)",
        "input-error-border" => "@highlight-error",
        "input-error-color" => "@highlight-error",
        "input-success-bg" => "#FFFFFF",
        "input-success-border" => "@highlight-success",
        "input-success-color" => "@brand-secondary-dark",
        "panel-table-header-bg" => "@panel-bg",
        "panel-table-header-color" => "@text-color-dark",
        "table-row-bg" => "#FFFFFF",
        "table-row-color" => "@brand-secondary",
        "table-row-highlight-bg" => "darken(@table-row-bg, 4%)",
        "table-header-bg" => "@brand-secondary",
        "table-header-color" => "#FFFFFF",
        "badge-discount-bg" => "@highlight-error",
        "badge-discount-color" => "#FFFFFF",
        "badge-newcomer-bg" => "@highlight-notice",
        "badge-newcomer-color" => "#FFFFFF",
        "badge-recommendation-bg" => "@highlight-success",
        "badge-recommendation-color" => "#FFFFFF",
        "badge-download-bg" => "@highlight-info",
        "badge-download-color" => "#FFFFFF"
    ];

    /**
     * Holds default font configuration
     *
     * @var array
     */
    private $themeFontDefaults = [
        'font-base-stack' => '"Open Sans", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;',
        'font-headline-stack' => '@font-base-stack',
        'font-size-base' => 14,
        'font-base-weight' => 500,
        'font-light-weight' => 300,
        'font-bold-weight' => 700,
        'font-size-h1' => 26,
        'font-size-h2' => 21,
        'font-size-h3' => 18,
        'font-size-h4' => 16,
        'font-size-h5' => '@font-size-base',
        'font-size-h6' => 12,
        'panel-header-font-size' => 14,
        'label-font-size' => 14,
        'input-font-size' => 14,
        'btn-font-size' => 14,
        'btn-icon-size' => 10
    ];

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}