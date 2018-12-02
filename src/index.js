import "@babel/polyfill"
import { paths }  from './config.paths'
import Koa  from 'koa';
import http from 'http';
import path from 'path'
import Router     from 'koa-router'
import socketIO   from 'socket.io';
import serve      from 'koa-static'
import bodyParser from 'koa-bodyparser'
import * as admin from 'firebase-admin';
const forwarded                 = require('forwarded-for');
const riot                      = require('riot');
const views                     = require('koa-views');
const x_tag_cmpnt_perfil        = require('./server/components/panel-perfil.tag')
const x_tag_cmpnt_buzon         = require('./server/components/panel-buzon.tag')
const x_tag_cmpnt_colecion      = require('./server/components/panel-coleccion.tag')
const x_tag_cmpnt_contenido     = require('./server/components/panel-contenido.tag')
const x_tag_cmpnt_estadisticas  = require('./server/components/panel-estadisticas.tag')
const x_tag_cmpnt_bloquelogin   = require('./server/components/bloqueo.tag')
const x_tag_cmpnt_chatcliente   = require('./server/components/chat-cliente.tag')
const swig                      = require('swig-templates');





admin.initializeApp({
  credential: admin.credential.cert(paths.firebaseApp),
  databaseURL: 'https://pwa-frmwrk.firebaseio.com'
});7



const ownerdb = admin.database().ref('owmer/');
const clientesdb = admin.database().ref('clientes/');
const dinamicodb = admin.database().ref('dinamico/');
const contenidodb = admin.database().ref('contenido/');

// create Koa app instance
const app = new Koa();
const api = new Router();


let clientes = []
let ownerContact = []
let interesados = []



app.use(bodyParser());
app.use(serve(path.join(__dirname, '../www')))
app.use(views(__dirname + '/server/templates/', {
  map: {
    html: 'swig'
  }
}));

app.proxy = true

app.server = http.createServer(app.callback());
app.io = socketIO(app.server, {
 pingInterval: 920000,
 pingTimeout: 920000,
});
app.listen = (...args) => {
 app.server.listen.call(app.server, ...args);
 return app.server;
};


app.io.use((socket, next)=>{



  if(socket.session === undefined){


    let todo = socket.request.res.socket._httpMessage._header
    let re = /:\s|;\s/
    let algo = todo.split(re)
    for(let i = 0; i < algo.length; i++){

      for(let l = 0; l < 1; l++){
        let x = algo[i][l] + algo[i][l+1]
          if(x === 'io'){

            let ctx = app.createContext(socket.request, new http.OutgoingMessage());
            ctx.request.header.cookie = algo[i]
            socket.session = ctx.request.header.cookie
          }

      }

    }


next()

  }


})



 const huespedSocketRoom = app.io.of('/usuarioSinLoguearse')
 const OwnerSocketRoom = app.io.of('/usuarioSinRestrincciones')


 

 function mandarstatusowner(){
   if (!ownerContact[0]) {
     let data = {
       socket:ownerContact[0],//tratar de agregar ultima visita
       connect:false
     }
     huespedSocketRoom.emit('owner:status',data )
   }else if (ownerContact.length > -1) {
     let data = {
       socket:ownerContact[0],
       connect:true
     }
      huespedSocketRoom.emit('owner:status',data)
   }
   return 'actulizado'
 }















 huespedSocketRoom.on('connection', (cliente) => {

      let visitante = clientes.indexOf(cliente.handshake.headers.cookie)
      if(visitante < 0){
        clientes.push(cliente.handshake.headers.cookie)
        let sum = clientes.length + interesados.length

        console.log(`Tenemos: ${sum} conectados | ${clientes.length} usuarios son anonimos y los otros ${interesados.length} estan interesados y chateando ahora mismo` );

     }
     cliente.on('preguntar',(s)=>{
          let a = mandarstatusowner()
         // huespedSocketRoom.emit('clientes', clientes.length)
     })
     cliente.on('chat:huespedSend',(s)=>{

         let contenido = {
           key:cliente.id,
           data:s
         }
         OwnerSocketRoom.emit('cliente:message', contenido)
     })
     cliente.on('weareconnect',(interesadoinfo)=>{
        let infopareja = [cliente.id, interesadoinfo]
        let clientekey = clientesdb.push(infopareja)
        clientekey.then((value) => {
          cliente.emit('nuevo', {socketdata:cliente.handshake, dbkey:clientekey.key})
        }).catch((err) => {console.log('error al guardar cliente');})

     })
     cliente.on('updateroomid',(key)=>{
      let update = clientesdb.child(`${key}`).update({0:cliente.id})
      update.then(() => {
        console.log(cliente.id,'room update');
      }).catch((err) => {console.log('acavieneelformulariointereses');})
     })
     cliente.on('updateuserinfo',(info)=>{
      let key = info.info.cookie
      let update = clientesdb.child(`${key}`).update({1:info})
      update.then(() => {
        console.log(key,'info update');
      }).catch((err) => {console.log('acavieneelformulariointereses');})
     })



     cliente.on('disconnecting', ()=>{

      let b = clientes.indexOf(cliente.handshake.headers.cookie)

     if(b > -1){
       let sum = clientes.length + interesados.length
       console.log(`Tenemos: ${sum} conectados | ${clientes.length} usuarios son anonimos y los otros ${interesados.length} estan interesados y chateando ahora mismo` );
       let a = clientes.splice(b, 1)

       huespedSocketRoom.emit('clientes', clientes.length)
     }
   })
 })




















 OwnerSocketRoom.on('connection', (owner)=>{
   console.log('LLego el jefe');


  let verificacion = ownerContact.indexOf(owner.handshake.headers.cookie)
  if (verificacion < 0) {
    ownerContact.push(owner.handshake.headers.cookie)
    console.log(ownerContact);
    owner.emit('nuevo', owner.handshake)
    owner.emit('nivel', owner.adapter.nsp.name)

  }


  owner.on('owner:Send',(mensaje)=>{

      huespedSocketRoom.clients((error, clients) => {
              if (error) throw error;
              let s = clients.indexOf(mensaje.room)
              if(s > -1){
                huespedSocketRoom.in(mensaje.room).emit('mensajeentrante', mensaje.contenido);
              }else if (s < 0) {
                let key = mensaje.contenido.info.cookie
                let update = clientesdb.child(`${key}`).update({1:mensaje.contenido})
                update.then(() => {
                  console.log(key,'info update');
                }).catch((err) => {console.log('acavieneelformulariointereses');})
                console.log('este mensaje debe irse a firebase');
              }else{
                console.log('algo malo');
              }
            });

  })


   owner.on('disconnecting', ()=>{
     let b = ownerContact.indexOf(owner.handshake.headers.cookie)

    if(b > -1){
      console.log( ' Se fue el jefe' + ownerContact[b]);
      let a = ownerContact.splice(b, 1)

      // huespedSocketRoom.emit('clientes', ownerContact.length)
    }


   })
 })






function buscarIndexocrearUser(crear){

  if(crear === true){
    return clientesdb.once('value',function(data){
                let d = new Promise((resolve, reject) => {resolve(data.val())}).catch((err) => {console.log('error en labase de datos');})
                return d
              })
  }else if (crear === false) {
    return 'nuevo'
  }else{
    console.log('error');
  }


}

















 function recogerdatos(a){
   console.log('llegamos');
   if (a=='owner') {
     console.log('concide', a);

     return ownerdb.once('value', function(data){
               let d = new Promise((resolve, reject) => {resolve(data.val())}).catch((err) => {console.log('error en labase de datos');})
               return d
             })
   }else if (a=='clientes') {
     return clientesdb.once('value', function(data){
               let d = new Promise((resolve, reject) => {resolve(data.val())}).catch((err) => {console.log('error en labase de datos');})
               return d
             })
   }else if (a=='dinamico') {
     return dinamicodb.once('value', function(data){
               let d = new Promise((resolve, reject) => {resolve(data.val())}).catch((err) => {console.log('error en labase de datos');})
               return d
             })
   }else if (a=='contenido') {
     return contenidodb.once('value', function(data){
               let d = new Promise((resolve, reject) => {resolve(data.val())}).catch((err) => {console.log('error en labase de datos');})
               return d
             })
   }else{
     console.log('algo salio mal');
   }

 }

















 function verificarOwner(pth){
   let permitir = {
     cert: true,
     cpmnt: null,
     cmpntdata:null,
     cmpntmount:''
   }


      switch (pth) {
        case '/dashboard/perfil':
        permitir.cpmnt = x_tag_cmpnt_perfil
        permitir.cmpntdata = 'owner'
        permitir.cmpntmount = 'pánel-perfil'
        break;
        case '/dashboard/mensaje':
        permitir.cpmnt = x_tag_cmpnt_buzon
        permitir.cmpntdata = 'clientes'
        permitir.cmpntmount='panel-buzon'
        break;
        case '/dashboard/dinamico':
        permitir.cpmnt = x_tag_cmpnt_colecion
        permitir.cmpntdata = 'dinamico'
        permitir.cmpntmount='panel-coleccion'
        break;
        case '/dashboard/contenido':
        permitir.cpmnt = x_tag_cmpnt_contenido
        permitir.cmpntdata = 'contenido'
        permitir.cmpntmount='panel-contenido'
        break;
        case '/dashboard/estadisticas':
        permitir.cpmnt = x_tag_cmpnt_estadisticas
        permitir.cmpntdata = 'estadisticas'
        permitir.cmpntmount='panel-estadisticas'
        break;
        default:
          console.log('no encunetra pah apropiado');

      }




     return permitir

 }

 function verificarcookies(cookie){
   let galleta = {
     owner: false,
     passw: ''
   }
   if(cookie !== undefined){
     let probar = cookie.split(' ')
     for (var i = 0; i < probar.length; i++) {
       let sig =  probar[i].split('=')
       if (sig.indexOf('Owner') > -1) {
         galleta.owner = true
         galleta.passw = 'aaa'
       }
     }

   }

   return galleta
 }


 function verificarcookiescliente(cookie){
   let galletacliente = {
     visto: false,
     data:'keydatabase',
     intro:false
   }

   if(cookie !== undefined){
     let probars = cookie.split(' ')

     for(let l = 0; l < probars.length; l++){
       let yei = probars[l].split('=')

         if (yei.indexOf('cliente') > -1) {

           galletacliente.visto = true
           let qwer = yei[1].split(';')
           galletacliente.data = qwer[0]
           galletacliente.intro = true

         }
    }
   }

   return galletacliente
 }



//te conocemos fm

function teconocemos(pss,pe){
 let a = verificarOwner(pss, pe)
 return a
}











 api.use(async(ctx, next) => {
     const p = ctx.path
     const ipper = await forwarded(ctx.req, ctx.req.headers);
     // let as = (ctx.status === 404)?'si':'no';
     // console.log(as)
     // ctx.throw(400);

       let re1= /(^\/\bdashboard\b\/\bperfil\b)|(^\/\bdashboard\b\/\bmensaje\b)|(^\/\bdashboard\b\/\bdinamico\b)|(^\/\bdashboard\b\/\bcontenido\b)/ ;	// Variable Name 1
       let re = new RegExp(re1,["i"])
       switch (p) {
         case '/':

          let datos = await recogerdatos('owner')
          let vrfcliente = await verificarcookiescliente(ctx.header.cookie)
          let usuario = await buscarIndexocrearUser(vrfcliente.intro)
          let chatcmpnt = riot.render(x_tag_cmpnt_chatcliente, {ownerinfo:datos.val()})
          let vistacliente = await ctx.render('start', {a: ipper.ip ,renderHere: chatcmpnt, ownerh2o:datos.val(), verifiSocket:vrfcliente.visto, dbkeyuser:vrfcliente.data, datoscliente:(usuario==='nuevo')?(["idroom",{"key":"value"}]):usuario.child(vrfcliente.data).val()})

          break;
          case  '/login':


              let vrf = await verificarcookies(ctx.header.cookie)
              console.log(vrf.owner);
              console.log(ctx.method);
              if (vrf.owner === false) {
                if(ctx.method === 'GET'){
                  console.log('quiere decir que entraste por link');
                  let cpp = riot.render(x_tag_cmpnt_bloquelogin);
                  let css = await ctx.render('login',{ renderHere: cpp })
                }else if (ctx.method==="POST") {
                  console.log('quiere decir que mandaste una contraseña');
                  console.log(ctx.request.body.psw);
                    if(ctx.request.body.psw==="aaa"){
                      ctx.cookies.set('Owner', 'aaa', {httpOnly: true});
                      ctx.redirect('/dashboard/perfil')
                    }else{
                      ctx.redirect('/')
                    }
                }else{
                  console.log('Esto es incomodo');
                  }
              }else if (vrf.owner === true) {
                ctx.redirect('/dashboard/perfil')
              }


           break;
          case  (p.toString().match(re) || {}).input:
          console.log((p.toString().match(re) || {}));

                        let vrfs = verificarcookies(ctx.header.cookie)
                        if(vrfs.owner === false){
                          ctx.redirect('/login')
                        }else{
                          let son = await verificarOwner(p)
                          let datoss = await recogerdatos(son.cmpntdata)
                          let componente = await riot.render(son.cpmnt, { data: datoss.val() });
                          let cs = await ctx.render('dashboard', {renderHere: componente, data:datoss.val(), componente:son.cpmnt})
                        }


           break;
           default:
               if (ctx.status === 404) {
                 console.log('no encontrado' + ctx.status)
                 let er = await ctx.render('nofound')
               }

       }



 });


 app.use(api.routes())
 app.use(api.allowedMethods())







app.listen(paths.port, function() {
  console.log('El motor V8 esta encendido y listo para usar...')
});
