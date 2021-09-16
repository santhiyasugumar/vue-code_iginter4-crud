<?php
//Reference: https://codeigniter.com/user_guide/outgoing/api_responses.html
namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class TestApi extends ResourceController
{
    protected $modelName = 'App\Models\ProfileModel';
    protected $format    = 'json';

    public function index() {
        return $this->respond($this->model->orderBy('id', 'DESC')->findAll());
    }

    public function show($limit = 0, $offset = 0) {
        return $this->respond($this->model->findAll($limit, $offset));
    }

    public function edit($id = null) {
        return $this->respond($this->model->find($id));
    }

    public function delete($id = NULL)
    {
        $profile = $this->model->delete($id);
        return $this->respondDeleted([ 'status' => true, 'id' => $id, 'message' => 'deleted Successfully']);
    }

    public function create()
    {
        $data = [
            'name' => $this->request->getVar('name'),
            'position'  => $this->request->getVar('position'),
        ];
        $this->model->insert($data);
        $user_id = $this->model->getInsertID();
        $this->model->update($user_id, ['avatar' =>  'https://i.pravatar.cc/150?img='.(($user_id%70)+1) ]);
        $response = [
            'status'   => 201,
            'error'    => null,
            'messages' => [
                'success' => 'User created successfully',
                'user_id' => $user_id
            ],
            'data' => $this->model->find($user_id)
        ];
        return $this->respondCreated($response);
    }

    public function update($id = null)
    {
        $data = [
            'name' => $this->request->getVar('name'),
            'position'  => $this->request->getVar('position'),
        ];
        $this->model->update($id, $data);
        return $this->respond($this->model->findAll());
    }
}