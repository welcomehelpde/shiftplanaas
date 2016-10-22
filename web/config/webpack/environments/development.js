'use strict';
var webpack = require('webpack');

module.exports = function(_path) {
  return {
    context: _path,
    debug: true,
    devtool: 'cheap-source-map',
    devServer: {
      contentBase: './dist',
      info: true,
      hot: false,
      inline: true,
      historyApiFallback: true
    }
  };
};
