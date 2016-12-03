import angular from 'angular';
import uiRouter from 'angular-ui-router';
import homeComponent from './home.component';

export default angular.module('home', [uiRouter])
  .config(($stateProvider, $urlRouterProvider) => {
    'ngInject';

    $urlRouterProvider.otherwise('/');

    $stateProvider
      .state('home', {
        url: '/',
        component: 'home'
      })
      .state('newOrganization', {
        url: '/organizations/new',
        component: 'newOrganization'
      })
      .state('manageOrganization', {
        url: '/organizations/manage',
        component: 'manageOrganization'
      });
  })
  .component('home', homeComponent)
  .name;
