<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class user extends BaseController
{
    public function index()
    {
    return view('admin/login');
        
    }

    public function login()
	{
	$usernya     =  $this->request->getPost('txtuser');   
	$passwordnya =  md5($this->request->getPost('txtpass'));
		
	$syarat=[
	   'username'=>$usernya,
	   'password'=>$passwordnya
	];
		
	$queryUser = $this->admin->where($syarat)->find(); 
	
	if(count($queryUser)==1){
		// membuat session
		$dataSession=[
			'user' =>$queryUser[0]['username'],
			'nama' =>$queryUser[0]['namauser'],
			'level' =>$queryUser[0]['leveluser'],
			'sudahkahLogin'=>true 
		];
		session()->set($dataSession);
		// jika sukses login arahkan ke dashboar
		return redirect()->to(site_url('/dashboard'));
	} else {
		//mengembalikan ke halamana login
		return redirect()->to(site_url('/login'))->with('info','Gagal Login');
		}	
	}
}