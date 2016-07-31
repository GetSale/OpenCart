<?php
class ControllerModuleGetsale extends Controller {
    public function index() {
        return html_entity_decode($this->config->get('getsale_code'), ENT_QUOTES, 'UTF-8');
    }
}
