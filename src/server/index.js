
import { paths }  from '../../config.paths.js'





const http2 = require('http2')
const express = require('express')
const fs = require('fs')

const app = express()
require('express-http2-workaround')({ express:express, http2:http2, app:app })




const options = {
    key: fs.readFileSync(__dirname + '/certificados/server.key'),
    cert:  fs.readFileSync(__dirname + '/certificados/server.crt')
}


http2.createServer(options, app)
     .listen(paths.port, (error) => {
        if (error) {
          console.error(error)
          return process.exit(1)
        } else {
          console.log('localhost:' + paths.port + '/')
        }

      })

  // app.set('views', path.join(__dirname, 'views/layouts'));
  // app.engine('.hbs', exphbs({defaultLayout: 'index', extname: '.hbs'}));
  // app.set('view engine', '.hbs');

  // app.use(express.static('www/client'));
  //

  //
  // app.get('/', function(req, res) {
  //   res.render('index', { title: 'Hey', body: 'Hello there!'})
  // })
  //
  app.get('/', function(req, res) {

  res.send('hola amigo')

  })
