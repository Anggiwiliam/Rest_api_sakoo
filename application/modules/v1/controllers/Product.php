<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/MY_REST_Controller.php';

class Product extends REST_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('Barang_model', 'brg');
    }
    public function index_get(){

        $id =  $this->get('id_product');
        if ($id === null) {
            $barang = $this->brg->getBarang();
        } else {
            $barang = $this->brg->getBarang($id);
        }
       
       if ($barang) {
        $this->response([
            'status' => TRUE,
            'data' => $barang
        ], REST_Controller::HTTP_OK);
       } else {
        $this->response([
            'status' => FALSE,
            'message' => 'Id Not Found'
        ], REST_Controller::HTTP_NOT_FOUND);
       }
    }

    public function index_delete(){

        $id = $this->delete('id_product');
        if ($id === null){
            $this->response([
                'status' => FALSE,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->brg->deleteBarang($id) > 0){
                $this->response([
                    'status' => TRUE,
                    'id' => $id,
                    'message' => 'The item has been deleted.'
                ], REST_Controller::HTTP_OK);
            } else {
                $this->response([
                    'status' => FALSE,
                    'message' => 'Id Not Found'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
    }

    public function index_post() {
        $data = [
            'name' => $this->post('name'),
            'description' => $this->post('description'),
            'price' => $this->post('price'),
            'created_at' => $this->post('created_at'),
            'update_at' => $this->post('update_at')
        ];
        if ($this->brg->createBarang($data) > 0 ) {
            $this->response([
                'status' => TRUE,
                'message' => 'New Barang has been created'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'Failed to create new data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function index_put() {

        $id = $this->put('id_product');
        $data = [
            'name' => $this->put('name'),
            'description' => $this->put('description'),
            'price' => $this->put('price')
        ];
        if ($this->brg->updateBarang($data, $id) > 0 ) {
            $this->response([
                'status' => true,
                'message' => 'Barang has been update'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'Failed to update data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}