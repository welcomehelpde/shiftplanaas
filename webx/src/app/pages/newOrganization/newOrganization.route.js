import newOrganizationController from './newOrganization.controller';
import newOrganizationTpl from './newOrganization.html';

export default $stateProvider => {
  'ngInject';

  $stateProvider
    .state('newOrganization', {
      url: '/organizations/new',
      templateUrl: newOrganizationTpl,
      controller: newOrganizationController,
      controllerAs: 'newOrganizationCtrl',
      bindToController: true,
      scope: {}
    });
}
