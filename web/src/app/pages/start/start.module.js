import route from './start.route';
import './start.scss';

const startPageModule = angular.module('start-module', [
  'ui.router'
]);

startPageModule
    .config(route);

export default startPageModule;
