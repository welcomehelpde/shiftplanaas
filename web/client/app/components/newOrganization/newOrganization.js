import angular from 'angular';
import uiRouter from 'angular-ui-router';
import newOrganizationComponent from './newOrganization.component';

export default angular.module('newOrganization', [uiRouter])
  .component('newOrganization', newOrganizationComponent)
  .name;
