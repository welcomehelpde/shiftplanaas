import headerTpl from './header.html';

function headerComponent() {
  'ngInject';

  return {
    restrict: 'E',
    templateUrl: headerTpl,
    controller: HeaderController,
    controllerAs: 'vm',
    bindToController: true,
    scope: {}
  };
}

function HeaderController () {
}

export default headerComponent;
