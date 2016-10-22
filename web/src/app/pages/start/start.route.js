'use strict';

import startTpl from './start.html';

function routeConfig($stateProvider) {
  'ngInject';

  $stateProvider
    .state('start', {
      url: '/',
      templateUrl: startTpl,
      controller: require('./start.controller'),
      controllerAs: 'startCtrl',
      bindToController: true,
      scope: {}
    });

}

export default routeConfig;
