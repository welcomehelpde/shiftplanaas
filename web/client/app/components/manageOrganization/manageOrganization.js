import angular from 'angular';
import uiRouter from 'angular-ui-router';
import manageOrganizationComponent from './manageOrganization.component';

export default angular.module('manageOrganization', [uiRouter])
  .component('manageOrganization', manageOrganizationComponent)
  .name;
