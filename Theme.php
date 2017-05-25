<?php

namespace Shopware\Themes\JoandJudy;

use Doctrine\Common\Collections\ArrayCollection;
use Shopware\Components\Form as Form;
use Shopware\Components\Theme\ConfigSet;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = 'Jo & Judy';

    protected $description = '';

    protected $author = 'Markus Gabriel';

    protected $license = 'MIT';

    protected $javascript = array(
        'src/js/jj-affix.js',
        'src/js/jj-functions.js'
    );

    public function createConfigSets(ArrayCollection $collection)
    {
        $set = new ConfigSet();
        $set->setName('JJ Theme');
        $set->setDescription('Set all colors to red and increase the font size');
        $set->setValues(array(
            'brand-primary' => '#97694b',
            'brand-primary-light' => 'saturate(lighten(@brand-primary,12%), 5%)',
            'brand-secondary' => '#5F7285',
            'brand-secondary-dark' => 'darken(@brand-secondary, 15%)',
            'gray' => '#a0a0a0',
            'gray-light' => '#f0f0f0',
            'gray-dark' => '#1a1a1a',
            'border-color' => '@text-color',
            'highlight-success' => '#2ECC71',
            'highlight-error' => '#E74C3C',
            'highlight-notice' => '#F1C40F',
            'highlight-info' => '#4AA3DF',
            'body-bg' => '#ffffff',
            'overlay-bg' => '#000000',
            'overlay-opacity' => '0.7',
            'text-color' => '@gray',
            'text-color-dark' => '@gray-dark',
            'link-color' => '@brand-primary',
            'link-hover-color' => '@text-color',
            'rating-star-color' => '@highlight-notice',
            'btn-default-top-bg' => '#FFFFFF',
            'btn-default-bottom-bg' => '#FFFFFF',
            'btn-default-hover-bg' => '@brand-primary',
            'btn-default-text-color' => '@text-color',
            'btn-default-hover-text-color' => '@brand-primary',
            'btn-default-border-color' => '@border-color',
            'btn-default-hover-border-color' => '@brand-primary',
            'btn-primary-top-bg' => '#FFFFFF',
            'btn-primary-bottom-bg' => '#FFFFFF',
            'btn-primary-hover-bg' => '@brand-primary',
            'btn-primary-text-color' => '@text-color',
            'btn-primary-hover-text-color' => '#FFFFFF',
            'btn-secondary-top-bg' => '@brand-secondary',
            'btn-secondary-bottom-bg' => '@brand-secondary-dark',
            'btn-secondary-hover-bg' => '@brand-secondary-dark',
            'btn-secondary-text-color' => '#FFFFFF',
            'btn-secondary-hover-text-color' => '@btn-secondary-text-color',
            'panel-header-bg' => '@gray-light',
            'panel-header-color' => '@text-color',
            'panel-border' => '@border-color',
            'panel-bg' => '#FFFFFF',
            'label-color' => '@text-color',
            'input-bg' => '@gray-light',
            'input-color' => '@brand-secondary',
            'input-placeholder-color' => 'lighten(@text-color, 15%)',
            'input-border' => '@border-color',
            'input-focus-bg' => '#FFFFFF',
            'input-focus-border' => '@brand-primary',
            'input-focus-color' => '@brand-secondary',
            'input-error-bg' => 'desaturate(lighten(@highlight-error, 38%), 20%)',
            'input-error-border' => '@highlight-error',
            'input-error-color' => '@highlight-error',
            'input-success-bg' => '#FFFFFF',
            'input-success-border' => '@highlight-success',
            'input-success-color' => '@brand-secondary-dark',
            'panel-table-header-bg' => '@panel-bg',
            'panel-table-header-color' => '@text-color-dark',
            'table-row-bg' => '#FFFFFF',
            'table-row-color' => '@brand-secondary',
            'table-row-highlight-bg' => 'darken(@table-row-bg, 4%)',
            'table-header-bg' => '@brand-secondary',
            'table-header-color' => '#FFFFFF',
            'badge-discount-bg' => '@highlight-error',
            'badge-discount-color' => '#FFFFFF',
            'badge-newcomer-bg' => '@highlight-notice',
            'badge-newcomer-color' => '#FFFFFF',
            'badge-recommendation-bg' => '@highlight-success',
            'badge-recommendation-color' => '#FFFFFF',
            'badge-download-bg' => '@highlight-info',
            'badge-download-color' => '#FFFFFF',
            'font-base-stack' => '"Muli", Helvetica, Arial, "Lucida Grande", sans-serif;',
            'font-headline-stack' => '@font-base-stack',
            'font-size-base' => 16,
            'font-base-weight' => 400,
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
            'btn-font-size' => 12,
            'btn-icon-size' => 10
        ));

        $collection->add($set);
    }

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}