'use strict'
import gulp from 'gulp'
import mocha from 'gulp-mocha'
import babel from 'gulp-babel'
import del from 'del'
import eslint from 'gulp-eslint'
import browserSync from 'browser-sync'
import gulpStylelint from 'gulp-stylelint'
import flow from 'gulp-flowtype'
import webpack from 'webpack-stream'
import webpack2 from 'webpack'
import webpackConfig from './webpack.config.babel'
import { paths } from './config.paths'


const bs = browserSync.create()





gulp.task('beforeAnything', () => {
  gulp.src('./src/index.html')
    .pipe(gulp.dest('./www/'))

  gulp.src('./src/assets/*.js')
    .pipe(gulp.dest('./www/client/'))

  gulp.src([
    './src/server/certificados/server.crt',
    './src/server/certificados/server.csr',
    './src/server/certificados/server.key',
  ])
    .pipe(gulp.dest('./www/server/certificados/'))

})

//  gulp.task para limpiar el servidor cuando hago start y cuando watcheo
gulp.task('clean', () => {
  del([
    paths.serverBundle,
    paths.clientBundle,
    paths.stylesBundle,
  ])
})

gulp.task('flowtype', () =>
  gulp.src([
    paths.srv,
    paths.clnt,
  ])
    .pipe(flow({
      abort: true,
    })),
)

//  gulp.task to make a ESlint of files in the src
gulp.task('lint', () =>
  gulp.src([
    paths.srv,
    paths.gulpFile,
    paths.clnt,
    paths.webpackC,
  ])
    .pipe(eslint())
    .pipe(eslint.format()),
    //  .pipe(eslint.failAfterError())
    //   esto esta comentado, si quieres que si encuentra
    //  un error lo bota automaticamente. si esta comenta sigue el proceso. depende de uno

)

// gulp.task para buscar todos los errores de gramatica en el css
gulp.task('lint-css', () =>
  gulp.src([
    paths.scssFile,
  ])
    .pipe(gulpStylelint(
      {
        failAfterError: false,
        reporters: [
          {
            formatter: 'string',
            console: true,
          },
        ],
      },
    )),
)

gulp.task('test', () => {
  gulp.src(paths.srv)
    .pipe(mocha())
})


//  gulp.task donde paso de ES6  a ES5. Solo del servidor
gulp.task('build-server', ['clean', 'flowtype'], () => {
  gulp.src([paths.srv])
    .pipe(babel())
    .pipe(gulp.dest(paths.srvrDir))
})


// gulp.task donde bundleo con webpack el cliente,
gulp.task('build-client', [ 'lint', 'lint-css'], () => {
  gulp.src(paths.entry)
    .pipe(webpack(webpackConfig, webpack2))
    .pipe(gulp.dest(paths.clntDir))
    .pipe(bs.stream({once: true}));
})


gulp.task('sync', ['build-client', 'build-server'], () => {

})

gulp.task('server', ['sync'],  () => {

if(bs.active == true){
  return
}else{
      bs.init({
        server: paths.localhost,
        port: 7001,
        httpModule:'http2',
        https: true,
        injectChanges: true,
        logFileChanges: true,
        reloadDelay: 2000
      })
}

})


gulp.task('default', ['server', 'beforeAnything'], () => {

  gulp.watch(paths.srv, ['build-server'])
  gulp.watch(paths.clnt, ['build-client'])
  gulp.watch(paths.scssFile, ['build-client'])


})
