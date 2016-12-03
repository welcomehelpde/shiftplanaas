import angular from 'angular';
import Home from './home/home';
import NewOrganization from './newOrganization/newOrganization';
import ManageOrganization from './manageOrganization/manageOrganization';

export default  angular.module('app.components', [
    Home,
    NewOrganization,
    ManageOrganization,
  ])
  .name;
