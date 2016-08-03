<?php

/**
 * 2016 GetSale
 * @author    GetSale Team <http://getsale.io/>
 * @copyright 2016 GetSale
 * @license   GNU General Public License, version 3
 */

class ControllerModuleGetsale extends Controller {
    public function index() {
        return html_entity_decode($this->config->get('getsale_code'), ENT_QUOTES, 'UTF-8');
    }
}
