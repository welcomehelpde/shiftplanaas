import angular from 'angular';
import uiRouter from 'angular-ui-router';
import <%= name %>Component from './<%= name %>.component';

export default angular.module('<%= name %>', [uiRouter])
  .component('<%= name %>', <%= name %>Component)
  .name;
