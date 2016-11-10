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
        
        function edit($id=null) {
            $this->load->helper('formfields');
            
            // try the session first
            $key = $this->session->userdata('key');
            $record = $this->session->userdata('record');
            
            // if not there, get them from the database
            if (empty($key)) {
                $record = $this->menu->get($id);
                $key = $id;
                $this->session->set_userdata('key',$id);
                $this->session->set_userdata('record',$record);
            }
            
            // build the form fields
            $this->data['fid'] = makeTextField('Menu code', 'id', $record->id);
            $this->data['fname'] = makeTextField('Item name', 'name', $record->name);
            $this->data['fdescription'] = makeTextArea('Description', 'description', $record->description);
            $this->data['fprice'] = makeTextField('Price, each', 'price', $record->price);
            $this->data['fpicture'] = makeTextField('Item image', 'picture', $record->picture);
            
            $cats = $this->categories->all(); // get an array of category objects
            foreach($cats as $code => $category) // make it into an associative array
                $codes[$code] = $category->name;
            $this->data['fcategory'] = makeCombobox('Category', 'category', $record->category,$codes);
            
            // show the editing form
            $this->data['pagebody'] = "mtce-edit";
            $this->render();
}

}
