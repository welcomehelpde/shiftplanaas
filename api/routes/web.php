<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

$app->get('/api/events/{token_admin}', 'EventsController@getEvent');
$app->get('/api/events_json/{token_admin}', 'EventsController@getEvent_json');
$app->get('/api/organizations/{token_admin}', 'OrganizationsController@getOrganization');
$app->get('/api/organizations_json/{token_admin}', 'OrganizationsController@getOrganization_json');
