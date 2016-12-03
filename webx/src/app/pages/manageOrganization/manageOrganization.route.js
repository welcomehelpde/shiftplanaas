import manageOrganizationController from './manageOrganization.controller';
import manageOrganizationTpl from './manageOrganization.html';

export default $stateProvider => {
  'ngInject';

  $stateProvider
    .state('manageOrganization', {
      url: '/organizations/manage',
      templateUrl: manageOrganizationTpl,
      controller: manageOrganizationController,
      controllerAs: 'manageOrganizationCtrl',
      bindToController: true,
      scope: {}
    });
}
