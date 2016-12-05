'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
var paths = exports.paths = {
  //  servidor
  srv: './src/server/**/*.js',

  //  cliente
  clnt: './src/client/**/*.js',

  //  redireccion a la entrada de webpack2
  entry: 'entry.js',

  //  lint para arhivos especificos
  gulpFile: 'gulpfile.babel.js',
  webpackC: 'webpack.config.babel.js',
  scssFile: './src/client/**/*.scss',

  crt: './server.crt',
  csr: './server.csr',
  key: './server.key',
  //  carpertas de distribucion
  srvrDir: './www/server/',
  clntDir: './www/client/',

  localhost: './www/',
  //port: process.env.PORT || 6000,
  port:7000,
  //  limpieza de la direccion en el watcheo, buena practica
  serverBundle: './www/server/**/*.js?(.map)',
  clientBundle: './www/client/*.js?(.map)',
  stylesBundle: './www/client/*.css?(.map)'

};
