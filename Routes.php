<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.

############### RUTE HALAMAN DEPAN #####################

$routes->get('/', 'Home::index');

$routes->get('/fasilitashotel','Fasilitashotel::tampilDiHome');

$routes->get('/fasilitaskamar','Fasilitaskamar::tampilDiHome');

$routes->get('/order/(:num)','Reservasi::order/$1');

$routes->post('/order','Reservasi::order');

$routes->post('/hasil-cari','Reservasi::hasilCari');

$routes->get('/cetak-invoice/(:num)','Reservasi::invoice/$1');

############### RUTE Otentifikasi Login #####################


// membuka halaman login untuk awal atau saat  gagal login
$routes->get('/login','User::index');

// dijalankan saat menekan tombol login
$routes->post('/login','User::login');

// membuat route untuk user yang sukes login
$routes->get('/dashboard','Dashboardpengguna::index');

// membuat logout 
$routes->get('/logout','User::index');

############### RUTE untuk mengelola Fasilitas Hotel #####################

$routes->get('/fasilitas-hotel','Fasilitashotel::index');

$routes->get('/tambah-fasilitas-hotel','Fasilitashotel::tambah');

$routes->post('/tambah-fasilitas-hotel','Fasilitashotel::tambah');

$routes->get('/hapus-fasilitas-hotel/(:num)','Fasilitashotel::hapus/$1');

$routes->get('/edit-fasilitas-hotel/(:num)','Fasilitashotel::edit/$1');

$routes->post('/edit-fasilitas-hotel','Fasilitashotel::edit');

############### RUTE untuk mengelola Fasilitas Kamar #####################

$routes->get('/fasilitas-kamar','Fasilitaskamar::index');

$routes->get('/tambah-fasilitas-kamar','Fasilitaskamar::tambah');

$routes->post('/tambah-fasilitas-kamar','Fasilitaskamar::tambah');

$routes->get('/hapus-fasilitas-kamar/(:num)','Fasilitaskamar::hapus/$1');

$routes->get('/edit-fasilitas-kamar/(:num)','Fasilitaskamar::edit/$1');

$routes->post('/edit-fasilitas-kamar','Fasilitaskamar::edit');


############### RUTE untuk mengelola  Kamar #####################

$routes->get('/tampil-kamar','Kamar::index');

$routes->get('/tambah-kamar','Kamar::tambah');

$routes->post('/tambah-kamar','Kamar::tambah');

$routes->get('/hapus-kamar/(:num)','Kamar::hapus/$1');

$routes->get('/edit-kamar/(:num)','Kamar::edit/$1');

$routes->post('/edit-kamar','Kamar::edit');


############### RUTE untuk mengelola  Reservasi #####################

$routes->get('/tampil-reservasi','Reservasi::index');

$routes->post('/tampil-reservasi','Reservasi::index');

$routes->get('/set-cek-in/(:num)','Reservasi::setStatusIn/$1');

$routes->get('/set-cek-out/(:num)','Reservasi::setStatusOut/$1');

$routes->get('/cek-kamar','Reservasi::cekKamar');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
