import route from './manageOrganization.route';
import './manageOrganization.scss';

export default angular.module('manageOrganization', ['ui.router'])
  .config(route);
