import route from './event.route';
import './event.scss';

const eventPageModule = angular.module('event-module', [
  'ui.router'
]);

eventPageModule
    .config(route);

export default eventPageModule;
