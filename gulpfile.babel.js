
const gulp = require('gulp4')
const browserSync = require('browser-sync').create()
const babel = require('gulp-babel')
const riot = require('gulp-riot');
const sass = require('gulp-sass');
const webpackstream = require('webpack-stream')
const webpack = require('webpack')
const del  = require('del')
const nodemon = require('gulp-nodemon')
import webpackConfig from './webpack.config.babel'
import { paths } from './src/config.paths'









































































// gulp.task('tranformarComponentess', function(done){
//   console.log('sosososos');
//   done()
// })





















































function watchear (cb){

   //
   // gulp.watch('src/assets/img/**', gulp.series(optimizarImagenes))
   // gulp.watch('src/assets/font/**', gulp.series(pasarfonts))

   gulp.watch('src/server/templates/**.html', gulp.series(cruzarTemplate, cruzarComponents, riotServerSide, babelIndex))
   gulp.watch('src/server/components/**/**.tag', gulp.series(cruzarTemplate, cruzarComponents, riotServerSide, babelIndex))
   gulp.watch('pwa/paginas/**/**.tag', gulp.series(tranformarTags, promesasG))
   gulp.watch('pwa/componentes/**/**.tag', gulp.series(tranformarComponentes, promesasG))
   gulp.watch('pwa/theme/**/**.scss', gulp.series(tranformarScss, promesasG))
   gulp.watch('pwa/componentes/**/**.scss', gulp.series(tranformarScss, promesasG))
   gulp.watch('pwa/paginas/**/**.scss', gulp.series(tranformarScss, promesasG))
   gulp.watch('src/*.js', gulp.series(babelIndex))
   gulp.watch('src/server/util/*.js', gulp.series(babelutil))
   gulp.watch('src/client/**/**.js', gulp.series(promesasG, babelIndex))



  cb()
}










async function ordenarCapertas(cb){

  let d = await optimizarImagenes()
  let s = await cruzarAsicdata()
  let e = await pasarfonts()
  let f = await cruzarTemplate()
  let g = await copiarIndex()
  let h = await cruzarComponents()
  cb()
}




async function build2Src(cb){

  let a = await tranformarTags()
  let b = await tranformarComponentes()
  let c = await tranformarScss()
  cb()
}
async function  src2www(cb){

  let h = await babelutil()
  let t = await riotServerSide()
  let b = await babelIndex()
  //
  //
  // let da = await console.log('segundo paso');
  cb()

}




function tranformarTags(){
let as = gulp.src([paths.pgnsTag]).pipe(riot()).pipe(gulp.dest(paths.pgnsDir))
return as
}

function tranformarComponentes(){
  let a = gulp.src([paths.cmpntsTag]).pipe(riot()).pipe(gulp.dest(paths.cmpntsDir))
  return a
}
function tranformarScss(){
  let sas = gulp.src([paths.themeScss]).pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError)).pipe(gulp.dest(paths.themeCss))
  return sas
}
function optimizarImagenes(){

  let yes = gulp.src([paths.assetsImg]).pipe(gulp.dest(paths.imgDir))
  //
  return yes
}

function pasarfonts(){

  let yes = gulp.src([paths.assetsfont]).pipe(gulp.dest(paths.fontDir))

  return yes
}
function cruzarAsicdata(){

    let yes = gulp.src([paths.asyncdatasrv]).pipe(gulp.dest(paths.asyncdatawww))

    return yes
}
function cruzarTemplate(){

    let yes = gulp.src([paths.template]).pipe(gulp.dest(paths.tmpltDir))

    return yes
}

function cruzarComponents(){

    let yes = gulp.src([paths.cmpntsCopy]).pipe(gulp.dest(paths.cmpntsServerDir))

    return yes
}

function copiarIndex(){
    let esto = gulp.src([ paths.favicon, paths.manifest, paths.homescreen]).pipe(gulp.dest(paths.wwwStart))
    return esto
}




function riotServerSide(){
  let yes = gulp.src([paths.cmpntsSrvr]).pipe(riot()).pipe(gulp.dest(paths.cmpntsServerDir))
  return yes
}



function babelIndex(){
    let daagh = gulp.src([paths.srcStart]).pipe(babel({presets: ['env']})).pipe(gulp.dest(paths.wwwStart))
    return daagh
}
function babelutil(){
    let daagh = gulp.src([paths.srcutil]).pipe(babel({presets: [['env', {
      "loose": true,
      "modules": false
    }]]})).pipe(gulp.dest(paths.wwwutil))
    return daagh
}

function promesasG(){
    let yes = new Promise((resolve)=>{resolve(webpackstream(webpackConfig, webpack).pipe(gulp.dest(paths.clntDir)))})
    return yes
}

function empezarNodemon(cb){

  var runnig = false

  let sta =  nodemon({
    script: paths.initFile,
    watch: ['./src/**/**'],
    ignore: [
    'gulpfile.babel.js',
    'webpack-config.babel.js',
    'node_modules/'
    ]
  }).on('start', function () {
      if(!runnig){
        cb()
      }

      runnig = true

  }).on('crash', function () {
    // sta.emit('restart', 10)
  }).on('restart', function (event) {
    console.log('se escucho un control-s en ' + event[0]);
    setTimeout(function(){



    browserSync.reload()

    }, 500)

  })

}



function browsersync(cb){

   if(!browserSync.active){
        browserSync.init(null,{
          logPrefix: paths.name,
          port: 3000,
          startPath: "/",
          proxy:{
                  target: 'http://localhost:' + paths.port + '/',
                  ws:true
                },
        socket: {
                  namespace: '/usuarioSinLoguearse',
                  domain: 'localhost:8888'
                },
          reloadDelay: 1000,
          browser: ["chrome"],
          ghostMode: {
                          clicks: true,
                          forms: true,
                          scroll: true
                      }
        })
      }else{
        browserSync.reload()
      }
      cb()
}






const armador = gulp.series(ordenarCapertas, build2Src,src2www,  promesasG, empezarNodemon, watchear)

//

export default armador

//



//
// // gulp.task('browsersync', browsersync)
// gulp.task('nodemon', iniciarNodemon)
// gulp.task('iniciar', iniciarTodo)
// gulp.task('arrancar', gulp.parallel( 'nodemon', gulp.series('iniciar', (done)=>{
// promesasG().then(()=>{
//   gulp.watch(['./build/componentes/**/**.tag', './build/paginas/**/**.tag', './build/theme/**/**.scss', './src/server/**/**.js'], (done)=>{
//         promsesasCreacionTodo().then(()=>{
//           done()
//         })
//     })
// })
// done()
// })))
//
//
//
//
//
//
// function iniciarNodemon(done) {
//
// var started = false;
//
//
//
// let sta =  nodemon({
//   script: paths.initFile,
//   stdout:   true,
//   ignore: [
//   'gulpfile.babel.js',
//   'webpack-config.babel.js',
//   'node_modules/'
//   ]
// }).on('start', function () {
//   if (!started) {
//                   started = true
//                   // browserSync.reload()
//                   // browserSync.notify('Reload....')
//                   done()
//   }
// }).on('crash', function () {
//     // browserSync.exit()
//     started = false
//     // browserSync.notify('CRASH!!!!')
// }).on('restart', function () {
//     // browserSync.exit()
//     started = false
//     // browserSync.notify('Restart!!!!')
// })
//
// return sta
//
// }
//
//

//
//
//
//
//
// function browsersync(done){
//
//   if(!browserSync.active){
//     browserSync.init({
//       logPrefix: paths.name,
//       proxy:{
//               target: 'http://localhost:' + paths.port + '/',
//               ws: true
//             },
//       // port: 8888,
//       // reloadOnRestart: false,
//       browser: ["firefox"],
//       ghostMode: {
//                   clicks: true,
//                   forms: true,
//                   scroll: true
//               }
//
//     })
//     done()
//   }else{
//     browserSync.reload()
//     browserSync.notify('Reload....')
//     done()
//   }
//
//
//
//
// }
//
//
//
//
//
//
//
//
//
//
//
//
// function promsesasCreacionTodo(){
//   let yes = copiarTemplate()
//   let dos = copiarIndex()
//   let dse = copiarImagenes()
//   let dsa = babelEmpezar()
//   let ase = babelIndex()
//   let asa = tranformarScss()
//   let kdf = tranformarTags()
//   let jus = tranformarComponentes()
//
//   return Promise.all([yes, dos, dsa, ase, asa, kdf, jus, dse])
// }
// function iniciarTodo(done){
//   limpiarFolder().then(()=>{
//     promsesasCreacionTodo().then(()=>{
//       console.log('realizado-copiar')
//     })
//   })
//   done()
// }
// function promesasG(){
//     console.log('realizado-webpack')
//     let yes = new Promise((resolve)=>{resolve(webpackstream(webpackConfig, webpack).pipe(gulp.dest(paths.clntDir)))})
//     return yes
// }
// function limpiarFolder(){
//   let oto = del([paths.wwwBundle])
//   let yes = new Promise((resolve, reject)=>{resolve(oto)})
//   return yes
// }
// function tranformarScss(){
//   let sas = gulp.src([paths.themeScss]).pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError)).pipe(gulp.dest(paths.themeCss))
//   return sas
// }
// function tranformarTags(){
// let as = gulp.src([paths.pgnsTag]).pipe(riot()).pipe(gulp.dest(paths.pgnsDir))
// return as
// }
// function tranformarComponentes(){
//   let a = gulp.src([paths.cmpntsTag]).pipe(riot()).pipe(gulp.dest(paths.cmpntsDir))
//   return a
// }
// function babelEmpezar(){
// let dys = gulp.src(paths.srv).pipe(babel({presets: ['env']})).pipe(gulp.dest(paths.srvrDir))
// return dys
// }
// function babelIndex(){
//   let daagh = gulp.src([paths.srcStart]).pipe(babel({presets: ['env']})).pipe(gulp.dest(paths.wwwStart))
//   return daagh
// }
// function copiarIndex(){
// let esto = gulp.src([paths.wpIcon, paths.favicon, paths.manifest, paths.webapp, paths.config]).pipe(gulp.dest(paths.wwwStart))
// return esto
// }
// function copiarTemplate(){
//   let yes = gulp.src([paths.template]).pipe(gulp.dest(paths.tmpltDir))
//   return yes
// }
// function copiarImagenes(){
//   let yes = gulp.src([paths.assets]).pipe(gulp.dest(paths.assetsDir))
//   return yes
// }
