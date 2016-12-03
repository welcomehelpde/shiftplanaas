function routeConfig($locationProvider, $urlRouterProvider) {
  'ngInject';
  $locationProvider.html5Mode(false);
  $urlRouterProvider.otherwise('/');
}

export default angular
  .module('index.routes', [])
    .config(routeConfig);

