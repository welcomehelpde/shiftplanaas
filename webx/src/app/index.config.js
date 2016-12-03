function config($compileProvider, $logProvider) {
  'ngInject';

  const isDev = NODE_ENV === 'development';
  $logProvider.debugEnabled(isDev);
  $compileProvider.debugInfoEnabled(isDev);
}

export default config;
