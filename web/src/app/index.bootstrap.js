// vendor
require('expose?moment!moment');
import 'angular';
import 'angular-ui-router';
import 'angular-ui-calendar';
import 'fullcalendar';

// index.html page to dist folder
import '!!file-loader?name=[name].[ext]';

// main App module
import './index.module';

import '../assets/styles/sass/index.scss';

angular.element(document).ready(function () {
  angular.bootstrap(document, ['shiftplanaas'], {
    strictDi: true
  });
});
