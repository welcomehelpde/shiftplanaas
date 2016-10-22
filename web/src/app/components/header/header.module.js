import headerDirective from './header.directive';
import './header.scss';

const headerModule = angular.module('header-module', []);

headerModule
  .directive('appHeader', headerDirective);

export default headerModule;
