import config from './index.config';

const App = angular.module(
  'shiftplanaas', [
    // plugins
    require('angular-ui-router'),
    'ui.calendar',

    // core
    require('./core/core.module').name,

    // components
    require('./index.components').name,

    // routes
    require('./index.routes').name,

    // pages
    require('./pages/start/start.module').name,
    require('./pages/event/event.module').name
  ]
);

App
  .config(config);

export default App;
