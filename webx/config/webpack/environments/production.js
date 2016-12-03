'use strict';
var CleanWebpackPlugin = require('clean-webpack-plugin');
var webpack = require('webpack');

module.exports = function(_path) {
  return {
    context: _path,
    debug: false,
    devtool: 'cheap-source-map',
    output: {
      publicPath: '/',
      filename: '[name].[chunkhash].js'
    },
    plugins: [
      new CleanWebpackPlugin(['dist'], {
        root: _path,
        verbose: true,
        dry: false
      }),
      new webpack.ProvidePlugin({
        'window.jQuery': 'jquery'
      })
    ]
  };
};
