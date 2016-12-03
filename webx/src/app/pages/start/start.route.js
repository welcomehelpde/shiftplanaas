import startController from './start.controller';
import startTpl from './start.html';

export default $stateProvider => {
  'ngInject';

  $stateProvider
    .state('start', {
      url: '/',
      templateUrl: startTpl,
      controller: startController,
      controllerAs: 'startCtrl',
      bindToController: true,
      scope: {}
    });
}
