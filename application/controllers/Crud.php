<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Crud extends Application {

	public function index() {
            $userrole = $this->session->userdata('userrole');
            if ($userrole != 'admin') {
                $message = 'You are not authorized to access this page. Go away';
                $this->data['content'] = $message;
            }
            $message = 'Get ready to fix stuff.';
            $this->data['pagebody' ] ='mtce';
            $this->data['items'] = $this->menu->all();
            $this->render();
        }

}
