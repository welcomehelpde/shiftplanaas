'use strict';

import eventTpl from './event.html';

function routeConfig($stateProvider) {
  'ngInject';

  $stateProvider
    .state('newEvent', {
      url: '/events/new',
      templateUrl: eventTpl,
      controller: require('./event.controller'),
      controllerAs: 'eventCtrl',
      bindToController: true,
      scope: {}
    })
    .state('editEvent', {
      url: '/events/:id',
      templateUrl: eventTpl,
      controller: require('./event.controller'),
      controllerAs: 'eventCtrl',
      bindToController: true,
      scope: {}
    });

}

export default routeConfig;
