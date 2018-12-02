<chat-cliente>
  <style media="screen">


    /* .grid-container{
      z-index: 2;
      position: sticky;
      background-color: #ffffff59;
      display: grid;
    }

    .grid-container[data-dato="single"]{
      grid-template-columns:1fr;
      grid-template-rows:100vh;
      align-items: center;
      background-color: #eeeeeeaa;
    }
    .grid-container[data-dato="split"]{
      grid-template-columns:3fr 1fr;
      grid-template-rows:100vh;
      align-items: center;
      background-color: black;
      color:white;


    } */

  </style>


  <div id="headerserver" class="mdl-card--border mdl-shadow--16dp" style="width:100%;display: flex;flex-direction: row;justify-content: space-between;" >
    
    
    <p id="clientedesconocidop" style="margin: 0 0 0 3em;font-size:22px;">👋
      <span style="color:snow;font-size:11px;font-weight:900;" id="tw"> Hola soy { this.opts.ownerinfo.nombre }</span>
    </p>
    <button id="clientedesconocidob" class="botonquequiero mdl-button mdl-button--raised" style="height:auto;background:#bdbdbd;color:snow;"
      data-realidad="contenedorchatcliente">
      <i class="material-icons">subject</i>
    </button>
  
    <div id="clientereconocidop" style="display:none;margin: 11px 0px 0px 3em;color:white;">
      <span class="mdl-badge" data-badge="4">
        <i class="material-icons">question_answer</i>
      </span>
      <span class="mdl-badge" data-badge="6">
        <i class="material-icons">shopping_cart</i>
      </span>
      <span class="mdl-badge" data-badge="19">
        <i class="material-icons">date_range</i>
      </span>
      <span class="mdl-badge" data-badge="3">
        <i class="material-icons">announcement</i>
      </span> 
    </div>
    <button id="clientereconocidob" class="botonquequiero mdl-button mdl-button--raised" data-realidad="contenedorchatowener" style="display:none;height:auto;background:#bdbdbd;color:snow;" >
        <i class="material-icons">subject</i>
    </button>
    
  </div>

  <div id="acarenderintro" style="display:none;"></div>



  <!-- 

          <div class=" mdl-card--border mdl-shadow--16dp" id="conversionexitosadiv" >

               y trabajo de { this.opts.ownerinfo.profesion },
              desde hace{ this.opts.ownerinfo.exp },
              acutalmente vivo en { this.opts.ownerinfo.residencia },
              Hasta ahora tuve { this.opts.ownerinfo.historial.length } trabajos,
              desarrolle { this.opts.ownerinfo.skills.length } habilidades,
              hablo fluido { this.opts.ownerinfo.idiomas.length } idiomas,
              y tengo { this.opts.ownerinfo.interest.length } proyecto en marcha.
              me defino de la siguiente forma { this.opts.ownerinfo.biografia }]
            <button  type="button" class="botonquequiero" data-realidad="contenedorchatowener" >
               Menu
            </button>
                <div class="mdl-card--border mdl-shadow--16dp" style="grid-area:marquee;background-color:black;color:white;display:flex;flex-direction:row;justify-content: space-around;align-items: flex-end;">
                  <p>jajajajajajaja</p>
                </div>
          </div> -->


  <script type="javascript">



  </script>


</chat-cliente>
<contenedorchatcliente>




  <!-- 

     <div class="panle-perfil" >

      <div class="marcaabrierto" style={ (!perfilobios)? 'background-color:#343d46':'background-color:#ffffff;'} >
    .
      </div>
      <div  style={ this.opts.data.foto }>

      </div>
      <div  id="presentaciontarjeta" style="background-color:#ffffff;color:black;" >

        <button class="mdl-button mdl-js-button mdl-button--icon" style="width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;" onclick={ abrirselecionadoocultardemas }  >
          <span style="margin-left:4em;">ver historial de trabajos</span>
          <i class="material-icons" style="left: 92%!important;">{ (perfilobios)? 'navigate_next':'navigate_before' }</i>
        </button>

        <p><em>{ this.opts.data.nombre }</em></p>

        <p><em>{ this.opts.data.profesion }</em></p>

        <p><em>{ this.opts.data.exp }</em> Años</p>

        <p><em>{ this.opts.data.residencia }</em></p>

        <div class="sujetadordecontactos">
          <div each={ contacto , i in this.opts.data.contacto }>
              <button class="mdl-button mdl-js-button mdl-button--icon extrabotoncontacto" style={ contacto.svg } type="button" name={ contacto.link } onclick={ botondireccionarredessociales }></button>
          </div>
        </div>

      </div>
      <div class="marcaabrierto" style={ (!perfiloskills)? 'background-color:#c0c5ce':'background-color: #ffffff;'} >


    </div>
      <div class="tarjetasperfil" id="skillstarjeta">

          <span >Habilidades tecnicas y sociales que me destacan como profesional</span>

        <button class="mdl-button mdl-js-button mdl-button--icon" onclick={ abrirselecionadoocultardemas } style="height:100%;;width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;">
          <span style="margin-left:7em;">ver detalles</span>
          <i class="material-icons" style="left: 92%;!important;">{(perfiloskills)? 'navigate_next':'navigate_before'}</i>
        </button>
      </div>


          <div class="marcaabrierto" style={ (!perfilointerest)? 'background-color:#a7adba':'background-color: #ffffff;'} >

          </div>
          <div class="tarjetasperfil" id="interesestarjeta">

              <span>Proyectos e intereses que realizo a forma de aprender nuevas habilidades</span>

            <button class="mdl-button mdl-js-button mdl-button--icon" onclick={ abrirselecionadoocultardemas } style="height:100%;;width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;">
              <span style="margin-left:7em;">ver detalles</span>
              <i class="material-icons" style="left: 92%;!important;">{(perfilointerest)? 'navigate_next':'navigate_before'}</i>
            </button>
          </div>

      <div class="marcaabrierto" style={ (!perfilolanguages)? 'background-color: #65737e': 'background-color: #ffffff;'} >

      </div>
      <div class="tarjetasperfil" id="idiomastarjeta">

          <span>Idiomas en los que me puedo comunicar, claramente deberia aumentar unos mas</span>

        <button class="mdl-button mdl-js-button mdl-button--icon" onclick={ abrirselecionadoocultardemas }  style="height:100%;;width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;">
          <span style="margin-left:7em;">ver detalles</span>
          <i class="material-icons" style="left: 92%;!important;">{(perfilolanguages)? 'navigate_next':'navigate_before'}</i>
        </button>
      </div>




      <div class="marcaabrierto" style={ (!perfilocoment)? 'background-color:#4f5b66':'background-color: #ffffff;'} >

      </div>
      <div class="tarjetasperfil" id="calificaciontarjeta">
        <div class="">
          <span>Clasificacion y opiniones de personas con las que tuve el gusto de trabajar</span>
        </div>
        <button class="mdl-button mdl-js-button mdl-button--icon" onclick={ abrirselecionadoocultardemas }  style="height:100%;;width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;">
          <span style="margin-left:7em;">ver detalles</span>
          <i class="material-icons" style="left: 92%;!important;">{(perfilocoment)? 'navigate_next':'navigate_before'}</i>
        </button>

      </div>


    </div>

    <div class="estossonlosdetalles" >


      <div if={ (perfilobios && perfilocoment && perfilolanguages && perfilointerest && perfiloskills )  } >
        <h1>Bienvenido este es tu perfil profesional</h1>
        <p>puedes editarlo y guardar sesion</p>}
        <span style="padding: 1em 1em;    position: block;    display: flex;    flex-direction: row;    bottom: 0;    right: 17em;">
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" onclick={ cerrarmodaldecv }>
            Cerrar CV
          </button>
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" onclick={ entraralroomdechat }>
            Chatear con { this.opts.data.nombre }
          </button>
        </span>

        <p>estarua la primer apginas que vez que se oculta si alguna de las otras aparece</p>
      </div>
      <div class="encima" if={ !perfilobios } style={ (!perfilobios)? 'background-color: #343d46;':'z-index:0;' }>
        <h1>Timeline y bios</h1>
        <hr>
          <span style="background-color: white;color: black;width: 17%;font-size: 11px;line-height: 11px;margin-top: -26px;">Carta Presentacion:</span>
          <p>{ this.opts.data.biografia}</p>
          <hr>
            <ul class="timeline">
              <li class="timeline-event"  each="{ entry , i in this.opts.data.historial }">
                <label class="timeline-event-icon"></label>
                <div class="timeline-event-copy">
                  <p class="timeline-event-thumbnail">{ entry.duracion }</p>
                  <p class="encabezadoempresa">{ entry.empresa }-{ i }</p>
                  <p class="encabezadocargo">{ entry.cargo }</p>
                  <p class="encabezadoreferencia">{ entry.jefedirecto } : <a href="#">{ entry.numreferencia }</a></p>
                  <hr>
                    <p><strong>Contribui de forma positiva:</strong><br>{ entry.contribucion }</p>
                    <p><strong>Aprendi</strong><br>{ entry.aprendozaje }</p>
                  </div>
                </li>
              </ul>
        </div>
        <div class="encima" if={ !perfiloskills } style={ (!perfiloskills)? 'background-color:#c0c5ce;':'z-index:0;'}>
          <h1>Eas son mi habilidades</h1>
          <p> M = moderado E = experto</p>
         
          <label each={ habilidad , i in this.opts.data.skills }>
            skill: #{ i }
          <span class="mdl-chip mdl-chip--contact" data-index={ i }>
              <span class="mdl-chip__contact mdl-color-text--white" style={ (habilidad.nivel=='M')? 'background-color:teal;':'background-color:red;' }>{ habilidad.nivel }</span>
              <span class="mdl-chip__text">{ habilidad.name }</span>
          </span>
          </label>
         </div>
         <div class="encima" if={ !perfilointerest } style={ (!perfilointerest)? 'background-color: #a7adba;':'z-index:0;' }>
           <h1>Intereses</h1>

                  <div class="block second" each={ interest , i in this.opts.data.interest }>
                      <p class="citation">{ interest.proyecto }</p>
                      <p class="author" >- { interest.intereses } -</p>
                  </div>

         </div>

            <div class="encima" if={ !perfilolanguages } style={ (!perfilolanguages)? 'background-color: #65737e;':'z-index:0;' }>
              <h1>Idiomas</h1>



              <label each={ idiomas , i in this.opts.data.idiomas }>
                <h4>{ idiomas.lenguaje } <sub>{ idiomas.tiempo }</sub> </h4>

              <label>
                hablado:
                <div class="progress-bar">
                  <div class="loaded" style={ idiomas.hablado }>
                  </div>
                </div>

              </label>
              <label>
                redaccion:
                <div class="progress-bar">
                  <div class="loaded" style={ idiomas.redaccion }>
                  </div>
                </div>

              </label>
              <label>
                comprension:
                <div class="progress-bar">
                  <div class="loaded" style={ idiomas.comprension }>
                  </div>
                </div>
              </label>
              <label>
                libros:
                <p> { idiomas.libros } </p>
              </label>
              </label>

            </div>

              <div class="encima" if={ !perfilocoment } style={ (!perfilocoment)? 'background-color:#4f5b66;':'z-index:0;' }>
                <h1>comentarios</h1>
              </div>

          </div> -->
  <!-- Raised button -->
  <!-- Colored raised button -->


  <article id="webslides" style="background-color:white;color:black;display:none;width:100vw;overflow-y: hidden;">
    <!-- Slide 1 -->
    <section>
      <h1>Design for trust</h1>


    </section>
    <!-- Slide 2 -->
    <section class="bg-primary">
      <div class="wrap">
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" onclick={ entraralroomdechat }>
          Quiero conectarme!
        </button>
      </div>
    </section>
  </article>



  <button if={ !estapresentacion } class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" style="position: absolute;bottom: 40%;right: 40%;height: 7vh;width: 11vw;">
    Quiero conectarme!
  </button>

  <button if={ !estapresentacion } class="mdl-button mdl-js-button mdl-button--raised" style="background:white;color:black;position: absolute;bottom: 2em;right: 2em;height: 17vh;width: 11vw;"
    onclick={ abrirslides }>
    Diapositivas de presentacion!
  </button>

  <button class="mdl-button mdl-js-button mdl-button--fab" style="background:black;color:white;position: absolute;top: 1em;right: 1em;"
    onclick={ cerrar }>
    <i class="material-icons">close</i>
  </button>


  <script type="text/javascript">
    const tag_curriculum = this
    tag_curriculum.perfilobios = true
    tag_curriculum.perfilocoment = true
    tag_curriculum.perfilolanguages = true
    tag_curriculum.perfilointerest = true
    tag_curriculum.perfiloskills = true

    tag_curriculum.estapresentacion = false



    tag_curriculum.abrirslides = () => {

      tag_curriculum.estapresentacion = !tag_curriculum.estapresentacion

      document.getElementById('webslides').style.display = "block"

      const ws = new WebSlides({
        autoslide: true,
        changeOnClick: true,
        loop: true,
        minWheelDelta: 40,
        navigateOnScroll: true,
        scrollWait: 450,
        slideOffset: 50,
        showIndex: true
      });
    }

    tag_curriculum.cerrar = () => {

      document.getElementById('acarenderintro').style.display = "none"
      document.getElementById('headerserver').style.display = "flex"
      document.querySelector('chat-cliente').style.gridTemplateRows = "7vh"
      document.querySelector('chat-cliente').style.padding = "0.24em 0.92em"

    }

    tag_curriculum.entraralroomdechat = () => {

      //este boton lleva al chat tiene qe hacer hartas cosas
      //Primero que nada agregar una cookie de una dia
      //Segundo agregara a base de datos de clientes
      //Tercero fetch todo los api necesarias
      //Cuarto Mount el chat con toda la informacion
      //Preguntar el nombre antes de entrar

      let respuesta = new Promise((resolve, reject) => {
        let a = resolve(window.prompt('Como te llamas?', 'Luis Ejemplo'))
        let y = 'Pon tu nombre...'
        let b = (a === null || a === '') ? y : a;
        return b
      });
      respuesta.then((res) => {
        // document.getElementById('acarenderintro').style.display = "none" //desaparece el componente y aparece el loader
        // document.getElementById('conversionexitosadiv').style.height = "0" // se miminiza el componente ya logeado
        // document.getElementById('acarenderintro').style.height = "100vh"
        document.getElementById('acarenderintro').style.display = "none"
        document.getElementById('contenedorloader').style.display = "flex"
        document.querySelector('chat-cliente').style.display = "none"
        document.getElementById('inicio').style.display = "none"


        let tiempo = new Promise(function (resolve, reject) {
          setTimeout(() => {
            resolve()
          }, 5000)
        });
        return tiempo.then(() => {
          return res
        })
      }).then((myRes) => {

        let apiuno =
          `https://api.ipgeolocation.io/ipgeo?apiKey=19c335209e6147d3bb46704a350e7e84&ip=${tag_curriculum.opts.ip}`
        let apidos =
          `http://api.ipstack.com/${tag_curriculum.opts.ip}?access_key=5956b65645a36f8ac79694759580e92d`
        let apitre = `https://ipapi.co/${tag_curriculum.opts.ip}/json`


        const promises = [
          fetch(`https://api.ipgeolocation.io/ipgeo?apiKey=19c335209e6147d3bb46704a350e7e84&ip=190.186.84.60`),
          // fetch('http://api.ipstack.com/190.186.84.60?access_key=5956b65645a36f8ac79694759580e92d'),
          fetch(`https://ipapi.co/190.186.84.60/json`)
        ].map(p => p.then((res) => {
          return res.json()
        }));


        Promise.all(promises, (value) => {

        }).then((a) => {

          let myJson = {
            botc: [
              ['Saludos soy el Bot', 'vacio'],
              ['Apreta los botones de abajo y empieza', 'vacio'],
              ['vacio', 'Gracias empezare inmediatamente']
            ],
            mnsj: [
              [
                [''],
                ['Hola my nombre es JuanLuis']
              ],
              [
                [''],
                ['Prueba el chat que construi']
              ],
              [
                [''],
                ['Y mandame una sugerencia']
              ]
            ],
            forms: [{
                tema: "Domicilio",
                ciudad: "",
                direccion: "",
                numerocasa: "",
                telefonouno: "",
                telefonodos: "",
              },
              {
                tema: "Oficina",
                empresa: "",
                direccion: "",
                oficina: "",
                telefonouno: "",
                telefonodos: "",
              },
              {
                tema: "Postular",
                profesion: "",
                cargo: "",
                años: "",
                trabajos: "",
                carta: "",
              }
            ],
            basket: ['prueba'],
            qrcode: ['prueba'],
            info: {
              nombre: myRes,
              cookie: '',
              tiempoEntrada: '',
              urlEntrada: '',
              whatsapp: '',
              genero: 'default',
              avatar: '/client/assets/img/default.png',
              downsp: '2',
              ipAddress: tag_curriculum.opts.ip,
              codigocel: a[0]['calling_code'],
              city: a[0]['city'],
              connection_type: a[0]['connection_type'],
              continent_name: a[0]['continent_name'],
              country_capital: a[0]['country_capital'],
              country_code2: a[0]['country_code2'],
              country_name: a[0]['country_name'],
              country_tld: a[0]['country_tld'],
              currency_code: a[0].currency.code,
              currency_name: a[0].currency.name,
              district: a[0]['district'],
              state_prov: a[0]['state_prov'],
              languages: a[0]['languages'],
              time_zone_name: a[0]['time_zone'].name,
              zipcode: a[0]['zipcode'],
              asn: a[1]['asn'],
              org: a[1]['org'],
              country_flag: "http://assets.ipstack.com/flags/bo.svg",
              country_flag_emoji: "🇧🇴",
              languagesArray: [{
                  code: "es",
                  name: "Spanish",
                  native: "Español"
                },
                {
                  code: "ay",
                  name: "Aymara",
                  native: "Aymar"
                },
                {
                  code: "qu",
                  name: "Quechua",
                  native: "Runa Simi"
                }
              ],
              languages_default_code: "es",
              languages_default_name: "Spanish",
              country_flag_emoji_native: "Español"
            }
          }

          socket.emit('weareconnect', myJson)
          socket.on('nuevo', function (msj) {
            myJson.info.tiempoEntrada = msj.socketdata.time
            myJson.info.cookie = msj.dbkey
            myJson.info.urlEntrada = msj.socketdata.headers.referer
            document.getElementById('acarenderintro').style.display = "block"
            document.getElementById('contenedorloader').style.display = "none"
            document.querySelector('chat-cliente').style.display = "grid"
            document.getElementById('inicio').style.display = "block"


            // if (('navigator' in window)) {
            //   let a = navigator.connection
            //   myJson.info.downsp = a
            // }
            database.then((db) => {

              let usuarioStore = db.transaction('client', 'readwrite').objectStore('client');
              usuarioStore.clear()
              usuarioStore.put(myJson);
              usuarioStore.complete

            }).then(() => {
              console.log(myJson);


              document.cookie = 'cliente=' + msj.dbkey + ';max-age=86400;'
              let rendercmpntreal = 'contenedorchatowener'
              let introHere = document.querySelector('#acarenderintro')

              introHere.innerHTML = `<${rendercmpntreal}></${rendercmpntreal}>`

              riot.mount(rendercmpntreal, function () {
                return {
                  dato: myJson
                }
              })
            })


          })

        })

      })
    }






    tag_curriculum.cerrarmodaldecv = () => {
      document.getElementById('primeravisitadiv').style.display = "grid" // se miminiza componente no logueeado
      document.getElementById('acarenderintro').style.height = "0"
      tag_curriculum.unmount(true)



    }

    tag_curriculum.botondireccionarredessociales = (e) => {
      let vienede = e.target.name || e.path[0].name
      window.open(vienede, '_blank');
    }

    tag_curriculum.abrirselecionadoocultardemas = (e) => {
      let sss = e.target.parentNode.id || e.path[2].id
      let eee = e.target.parentNode.id || e.path[1].id



      switch (sss || eee) {
        case 'calificaciontarjeta':
          tag_curriculum.perfilocoment = !tag_curriculum.perfilocoment
          break;
        case 'idiomastarjeta':
          tag_curriculum.perfilolanguages = !tag_curriculum.perfilolanguages
          break;
        case 'interesestarjeta':

          tag_curriculum.perfilointerest = !tag_curriculum.perfilointerest
          break;
        case 'skillstarjeta':

          tag_curriculum.perfiloskills = !tag_curriculum.perfiloskills
          break;
        case 'presentaciontarjeta':

          tag_curriculum.perfilobios = !tag_curriculum.perfilobios
          break;
        default:

      }


    }
  </script>


</contenedorchatcliente>

<contenedorchatowener>
  <style media="screen">


    .usuario{
  background-color: snow;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.inputMessage {
  border: 10px solid #000;
  bottom: 0;
  height: 60px;
  left: 0;
  outline: none;
  padding-left: 10px;
  position: relative;
  right: 0;
  width: 100%;
}
.chatArea {
  height: 100%;
  padding-bottom: 60px;
  background-color: white;
}

.messages {
  height: 100%;
  margin: 0;
  padding: 10px 20px 10px 20px;
}
  </style>




  <!-- <style>
 <div class="datosUsuarioVentana" data-tranform={ esteessuveredicto }>
      .demo-card-wide > .mdl-card__title {
        color: #fff;
        height: 111px;
        background: url('/client/assets/img/welcome_card.jpg') center / cover;
      }
      .demo-card-wide > .mdl-card__menu {
        color: #fff;
      }
      </style>

      <div class="demo-card-wide mdl-card mdl-shadow--2dp" style="grid-area:tarjeta;width:auto;">
        <div class="mdl-card__title">
          <div class="contenedor-imagen" >
            <img src={ this.opts.dato.info.avatar } alt="" width="25%" onclick={ siguienteAvatar }>
              <div class="contenedor-genero">
                <label ref="generomasculino" class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect" for="icon-toggle-1">
                  <input  type="checkbox" id="icon-toggle-1" class="mdl-icon-toggle__input" onchange={ verificargenero }>
                    <svg class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
                      <path id="gendermale" style="fill:grey;" d="M9,9C10.29,9 11.5,9.41 12.47,10.11L17.58,5H13V3H21V11H19V6.41L13.89,11.5C14.59,12.5 15,13.7 15,15A6,6 0 0,1 9,21A6,6 0 0,1 3,15A6,6 0 0,1 9,9M9,11A4,4 0 0,0 5,15A4,4 0 0,0 9,19A4,4 0 0,0 13,15A4,4 0 0,0 9,11Z" />
                    </svg>

                </label>
                <label  ref="generofemenino" class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect" for="icon-toggle-2">
                  <input  type="checkbox" id="icon-toggle-2" class="mdl-icon-toggle__input" onchange={ verificargenero }>
                    <svg class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
                      <path id="genderfemale" style="fill:grey;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
                    </svg>
                </label>
              </div>
          </div>
          <h2 class="mdl-card__title-text" onclick={ cambiarnombrecliente }>
            { this.opts.dato.info.nombre }
          </h2>
        </div>

        <div style="width: auto;height: 15vh;padding: 0em 0em;color: black;background-color: white;"> -->

  <!-- <div class="contenedor-recordar">
            <span>Recordar:</span>
            <div class="contenedor-ratios">
              <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-1" style="font-size: 11px!important;" onclick={ creardiacookie }>
                <input ref="solohoy" type="radio" id="option-1" class="mdl-radio__button" name="options" value="1" checked>
                <span class="mdl-radio__label">Solo Hoy</span>
              </label>

            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-2" style="font-size: 11px!important;" onclick={ crearsemanacookie }>
            <input ref="unasemana" type="radio" id="option-2" class="mdl-radio__button" name="options" value="2">
            <span class="mdl-radio__label">Una Semana</span>
            </label>
            </div>
          </div> -->

  <!-- <ul class='demo-list-control  mdl-list mdl-shadow--4dp' style="margin: 1px 0;padding: 1em 2.2em;width: auto;">
            <li style="display: grid;grid-template-columns: 0.2fr 0.9fr;grid-template-rows:5vh;padding: 1em 1em;align-items: center;text-align: left;justify-items: flex-end;">

              <div class="">
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="list-checkbox-2">
                  <span style="font-size: 11px!important;">Recordar</span>
                  <input type="checkbox" id="list-checkbox-2" class="mdl-checkbox__input" checked />
                </label>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="list-checkbox-1">
                  <span style="font-size: 11px!important;">Notificaciones</span>
                  <input type="checkbox" id="list-checkbox-1" class="mdl-checkbox__input" checked />
                </label>
              </div>
              <div class="contenedor-subscripcion">

                  <svg if={ noestasub } class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
                    <path id="genderfemalsae" style="fill:transparent;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
                  </svg>
                  <span style="font-size: 11px!important;" if={ noestasub }>Recibir descuentos semanales al Whatsapp</span>
                  <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-subs" if={ noestasub }>
                  <input type="checkbox" class="mdl-switch__input" id="switch-subs" onchange={ verificarsubscribcion }>
                  <span class="mdl-switch__label"></span>
                  </label>


                      <input class="mdl-textfield__input" type="text" id="sample1111" ref="codigopais" value={ this.opts.dato.info.codigocel } if={ quieresub }>

                    <div class="mdl-textfield mdl-js-textfield" if={ quieresub } style="max-width: 80%!important;">
                      <input class="mdl-textfield__input" type="number" id="sample1" ref="numerociudad" value={ '658-64-209' } >
                      <label class="mdl-textfield__label" for="sample1">Whatsapp Number</label>
                    </div>

                  <button type="button" name="button" onclick={ subscribcionEmail } if={ quieresub }>
                    <i class="material-icons">add</i>
                  </button>

                  <svg if={ subscrito } class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
                    <path id="genderfemalsae" style="fill:transparent;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
                  </svg>
                  <span if={ subscrito }>
                    <span style="font-size: 11px!important;" >Subscrito: </span>
                    <span  style="font-size: 11px!important;" >{ this.opts.dato.info.whatsapp }</span>
                  </span>
                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-subs" if={ subscrito }>
                    <input type="checkbox" class="mdl-switch__input" id="switch-subs" onchange={ norecibirnewsletter } checked>
                    <span class="mdl-switch__label"></span>
                    </label>



                </div>


            </li>
            <hr>
            <li style="display: grid;grid-template-columns: 0.11fr 0.82fr 0.1fr 0.05fr   ;align-items: center;text-align: center;grid-template-rows: 2vh;">
                  <img src={ this.opts.dato.info.country_flag } alt="" style="width: 51%;">
                    <div class="">

                                      <div style="font-size: 9px!important;">

                                        { this.opts.dato.info.continent_name } > { this.opts.dato.info.country_name } > { this.opts.dato.info.district } > { this.opts.dato.info.state_prov }

                                      </div>

                                      <div style="font-size: 8px!important;">
                                        Descarga { this.opts.dato.info.urlEntrada } a
                                        { this.opts.dato.info.downsp.downlink } Mb/s en una conexion { this.opts.dato.info.downsp.effectiveType }/{ this.opts.dato.info.connection_type }
                                        empresa { this.opts.dato.info.org }
                                      </div>
                      </div>
                            <div style="font-size: 11px!important;">
                              { this.opts.dato.info.country_flag_emoji_native }
                            </div>
         
                        <button id="demo-menu-lower-right"
                                class="mdl-button mdl-js-button mdl-button--icon" style="margin:0 auto!important;">
                          <i class="material-icons">g_translate</i>
                        </button>

                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                            for="demo-menu-lower-right" >
                          <li class="mdl-menu__item" each={ item , i in this.opts.dato.info.languagesArray  }>
                            {i}-{item.code},{item.name}, {item.native}
                          </li>

                        </ul>

            </li>



          </ul> -->


  <!-- 
          <style>
          .demo-list-control {
            width: auto;
          }

          .demo-list-radio {
            display: inline;
          }
          </style>
          <div class="mdl-card__actions mdl-card--border">
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">

              <div class="mdl-tabs__tab-bar" style="justify-content: space-between!important;">
                  <a href="#gift-panel" class="mdl-tabs__tab is-active">
                      <i class="material-icons">loyalty</i>
                  </a>
                  <a href="#basket-panel" class="mdl-tabs__tab">
                    <i class="material-icons">local_grocery_store</i>
                  </a>
                  <a href="#forms-panel" class="mdl-tabs__tab">
                    <i class="material-icons">local_shipping</i>
                  </a>
              </div>
              <div class="mdl-tabs__panel  is-active" id="gift-panel">
                Textfield with Floating Label
                  <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e7ccd799;width: auto;padding: 1em 1em;">
                    <div style="display: grid;grid-template-columns: auto 11vw ;grid-template-rows: 40vh;">

                      <div id="acavieneelticket" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>
                      <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                        <div each={ ticket , i in this.opts.dato.qrcode } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                            <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ mostrardetallesticket.bind(this, ticket, i) }>{ ticket.status }</button>
                        </div>
                      </div>


                    </div>


                    </div>
              </div>

              <div class="mdl-tabs__panel" id="basket-panel">
                Textfield with Floating Label
                  <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e1dcb799;width: auto;padding: 1em 0.5em;">
                    <p>Cotizacion de productos y confirmacion de compra</p>

                  </div>
              </div>
              <div class="mdl-tabs__panel" id="forms-panel">
                Textfield with Floating Label
                    <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e5fff799;width: auto;padding: 1em 0.5em;">
                      <div style="display: grid;grid-template-columns: 11vw auto;grid-template-rows: 40vh;">

                        <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                          <div each={ formulario , i in this.opts.dato.forms } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                              <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ cambiarlosformularios.bind(this, formulario, i) }>{ formulario.tema }</button>
                          </div>
                        </div>

                        <div id="acavieneelformularioforms" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

                      </div>
                    </div>
                  </div>



            </div>

                    </div>

                </div>





        <div class="mdl-card__menu">
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick={ cerrarperfilcliente }>
          <i class="material-icons">skip_previous</i>
          </button>
        </div>







</div>-->



<div class="" style="grid-area:inicio;margin: 0.92em 0.26em 0em 0.26em;">
  <p if={ mainestadovisual && quieroelbot && hacerunacita }>{ this.opts.dato.info.cookie } Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  <div if={ !mainestadovisual} class="mdl-card mdl-shadow--8dp" style="width:auto; height: 100%;">

    <div class="mdl-card mdl-card--border mdl-list mdl-shadow--8dp" style="width:auto;min-height:11vh;grid-area:cotacto;overflow-y:auto;">
      <div class="mdl-list__item" style="padding:11px">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons mdl-list__item-avatar">person</i>
          <span>Dueño de la pagina</span>
        </span>
        <button class="mdl-list__item-secondary-actionkeyboard_arrow_down" onclick={ abrirchatconowner }>
        <i class="material-icons">keyboard_arrow_down</i>
        </button>
      </div>
    </div>

    <div class="" style="grid-area:chateando;min-height: 70vh;width:auto;">
      <ul   ref="mensajesleidos" class="messages" if={ ownerconectado }>

      </ul>
      <div class="" if={ !ownerconectado } style="grid-area:chateando;min-height: 70vh;width:auto;">
          <h1>no esta conectado</h1>
      </div>
    </div>
    <div class="mdl-card mdl-card--border mdl-list mdl-shadow--8dp" style="min-height: 12vh;width:auto;">
      <p>diceindome que pasa.....</p>
    </div>

  </div>
  <div if={ !quieroelbot } class=" mdl-card mdl-shadow--8dp" style="width:auto; height: 100%;background:#e7e7e8;">
    <div class="mdl-card mdl-card--border mdl-list mdl-shadow--8dp" style="width:auto;min-height:11vh;grid-area:cotacto;overflow-y:auto;">
      <div class="mdl-list__item" style="padding:11px">
        <span class="mdl-list__item-primary-content">
          <i class="material-icons mdl-list__item-avatar">android</i>
          <span>Asistente B. </span>
        </span>
        <button class="mdl-list__item-secondary-action" type="button" name="button" onclick={ abrirchatconbot }>
        <i class="material-icons">keyboard_arrow_down</i>
        </button>

      </div>
    </div>

    <div data-simplebar style="grid-area:chateando;min-height: 70vh;width:auto;">
      <ul if={ hacerunacita } ref="mensajesbot" class="messages">

      </ul>

      <div class="appoiment" if={ !hacerunacita } style="width:auto; height: 70vh;background:#292970;">






          Aca viene tu ticket. PLease keep in in gifts
          <div class="appoimentgrafico mdl-card">

            <div style="margin:0.3em 1.3em;">
                <h5 class="mdl-card__title-text"> <label for=""><sub>TICKET: </sub><b>#6534CITA</b></label> </h5>
                 <h5 class="mdl-card__title-text"> <label for=""><sub> USER: </sub><b>JuanLuis</b></label> </h5>
                 <h5 class="mdl-card__title-text"> <label for=""><sub>CIUDAD: </sub><b>Santa Cruz</b></label> </h5>
                 <h5 class="mdl-card__title-text"> <label for=""><sub>HORA: </sub><b>21/jun/2018 17:00</b></label> </h5>
            </div>

            <div class="mdl-card__media" style="background-color:rgb(120, 108, 112)!important;">
              <img src="/client/assets/img/frame.png" order="0" alt=""
               style="width: 66%;margin: 1em 3.3em;height: 66%;">
            </div>

            <div class="mdl-card__supporting-text">
            Conserva tu ticket y QR code
            Si deseas que el servicio sea a tu domicilio llena el fomrulario #457D en el sidebar
            </div>


          </div>

          Aca esta el formulario de citas. agenda tu dia tu mes tu hora. Y ve si tienes espacio libre. toma tu ticket y quet our men
          <div class="appoimentformulario">
            <style media="screen">
              .notIE {
                            position: relative;
                            display: inline-block;
                            }
                            select {
                            display: inline-block;
                            height: 30px;
                            width: 150px;
                            outline: none;
                            color: #74646e;
                            border: 1px solid #C8BFC4;
                            border-radius: 4px;
                            box-shadow: inset 1px 1px 2px #ddd8dc;
                            background: #fff;
                            }
                            /* Select arrow styling */

                            .notIE .fancyArrows {
                            width: 23px;
                            height: 28px;
                            position: absolute;
                            display: inline-block;
                            top: 1px;
                            right: 3px;
                            background: url(http://www.stackoverflow.com/favicon.ico) right / 90% no-repeat #fff;
                            pointer-events: none;
                            }
              </style>
              <input ref="correo" style="grid-area:correo;" type="text" name="" value="" placeholder="correo">
                <div style="grid-area:labelv;">
                  <div id="dtgt4" class="icon material-icons">share</div>
                  <div class="mdl-tooltip" for="dtgt4">
                  tu email<br>no es valido
                  </div>
                </div>
              <div style="grid-area:dia;" class="notIE">
                  <span class="fancyArrow"></span>
                  <select ref="fecha">
                    <option>Domingo</option>
                    <option selected>Lunes</option>
                    <option>Martes</option>
                    <option>Miercoles</option>
                    <option>Jueves</option>
                    <option>Viernes</option>
                    <option>Sabado</option>
                  </select>
                </div>
                <div style="grid-area:labeld;">
                  <div id="tgt4" class="icon material-icons">share</div>
                  <div class="mdl-tooltip" for="tgt4">
                  escoger otra<br>dia disponible
                  </div>
                </div>
                <div style="grid-area:mes;" class="notIE">
                    <span class="fancyArrow"></span>
                    <select ref="mes">
                      <option selected>Enero - 2018</option>
                      <option>Febrero - 2018</option>
                      <option>Marzo - 2018</option>
                      <option>Abril - 2018</option>
                      <option>Mayo - 2018</option>
                      <option>Junio - 2018</option>
                      <option>Julio - 2018</option>
                      <option>Agosto - 2018</option>
                      <option>Septiembre - 2018</option>
                      <option>Octubre - 2018</option>
                      <option>Noviembre - 2018</option>
                      <option>Diciembre - 2018</option>
                    </select>

                  </div>
                  <div style="grid-area:labelt;">
                    <div id="tta4" class="icon material-icons">share</div>
                    <div class="mdl-tooltip" for="tta4">
                    Escoger otro mes<br>disponible
                    </div>
                  </div>
                  <div style="grid-area:hora;" class="notIE">

                      <span class="fancyArrow"></span>
                      <select ref="horario">
                        <option selected>00:00 am</option>
                        <option>01:00 am</option>
                        <option>02:00 am</option>
                        <option>03:00 am</option>
                        <option>04:00 am</option>
                        <option>05:00 am</option>
                        <option>06:00 am</option>
                        <option>07:00 am</option>
                        <option>08:00 am</option>
                        <option>09:00 am</option>
                        <option>10:00 am</option>
                        <option>11:00 am</option>
                        <option>12:00 pm</option>
                        <option>13:00 pm</option>
                        <option>14:00 pm</option>
                        <option>15:00 pm</option>
                        <option>16:00 pm</option>
                        <option>17:00 pm</option>
                        <option>18:00 pm</option>
                        <option>19:00 pm</option>
                        <option>20:00 pm</option>
                        <option>21:00 pm</option>
                        <option>22:00 pm</option>
                        <option>23:00 pm</option>

                        <option>Pancakes</option>
                      </select>

                    </div>
                    <div style="grid-area:labelc;">
                      <div id="tft4" class="icon material-icons">share</div>
                      <div class="mdl-tooltip" for="tft4">
                      Escoger otra hora<br>disponible
                      </div>
                    </div>
                    <textarea ref="comentario" style="grid-area:motivo;" name="name" rows="8" cols="80" placeholder="comentario util"></textarea>
                    <div style="grid-area:label5;">
                      <div id="tt4d" class="icon material-icons">share</div>
                      <div class="mdl-tooltip" for="tt4d">
                      Comentario<br>sobre tu cita
                      </div>
                    </div>
          </div>
        </div>

    </div>
    <div class="mdl-card mdl-card--border mdl-list mdl-shadow--8dp" style="min-height: 12vh;width:auto;">
      <p>diceindome que pasa.....</p>
    </div>
  </div>



</div>

<div class="mdl-card mdl-shadow--2dp" style="grid-area:tarjeta2;height: auto;width: auto;min-height: 0;margin: 0.92em 0.26em;">


  <div class="parent" if={ mainestadovisual && quieroelbot }>


   <div class="one">

      <button class=" mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" type="button" name="button" onclick={ abrirchatconbot }>Empezar
        <i class="material-icons">golf_course</i>
      </button>

    </div>
    <div class="two">
        <button class=" mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick={ abrirchatconowner }>
        Chatear!
        <i class="material-icons">chat</i>
        </button>

    </div>


  </div>
  <div class="acavieneelinputdelchat" if={ !mainestadovisual }>
    <input ref="mensajenuevo" class="inputMessage" placeholder="Type here..." onkeypress={ analizarmensaje }/>

  </div>
  <div if={ !quieroelbot }>

<div if={ inicial } style="display: grid;grid-template-columns:1fr 1fr 1fr;grid-template-rows:11vh;grid-template-areas:'vi pe fe';">
  <button if={ !servicios && inicial } data-pregunta="1" style="grid-area:vi;" type="button"  onclick={ preguntarbotchat }>¿Que servicios tiene?</button>
  <button if={ !precios && inicial } data-pregunta="2" style="grid-area:pe;" type="button"  onclick={ preguntarbotchat }>¿Cual son tus precios?</button>
  <button if={ !felicitarte && inicial } data-pregunta="3" style="grid-area:fe;" type="button"  onclick={ preguntarbotchat }>Quiero felicitarlo por su trabajo</button>

</div>


<div if={ segundopaso } style="display: grid;grid-template-columns:1fr 1fr 1fr 0.26fr;grid-template-rows:11vh;grid-template-areas:'vi pe fe ba';">
  <button data-siguiente="servicio" if={ servicios && segundopaso } style="grid-area:vi;"  type="button"  onclick={ darbeneficios }>servico 1</button>
  <button data-siguiente="servicio" if={ servicios && segundopaso } style="grid-area:pe;"  type="button"  onclick={ darbeneficios }>servico 2</button>
  <button data-siguiente="servicio" if={ servicios && segundopaso } style="grid-area:fe;" type="button"  onclick={ darbeneficios }>servico 3</button>
  <button  if={ servicios && segundopaso } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>


  <button data-siguiente="precios" if={ precios && segundopaso }  style="grid-area:vi;" type="button"  onclick={ darbeneficios }>Precios 1</button>
  <button data-siguiente="precios" if={ precios && segundopaso }  style="grid-area:pe;" type="button"  onclick={ darbeneficios }>Precios 2</button>
  <button data-siguiente="precios" if={ precios && segundopaso }  style="grid-area:fe;" type="button"  onclick={ darbeneficios }>Precios 3</button>
  <button  if={ precios && segundopaso } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>

  <button data-siguiente="felicidad" if={ felicitarte && segundopaso }  style="grid-area:vi;" type="button"  onclick={ darbeneficios }>felicidad 1</button>
  <button data-siguiente="felicidad" if={ felicitarte && segundopaso }  style="grid-area:pe;" type="button"  onclick={ darbeneficios }>felicidad 2</button>
  <button data-siguiente="felicidad" if={ felicitarte && segundopaso } style="grid-area:fe;"  type="button"  onclick={ darbeneficios }>felicidad 3</button>
  <button  if={ felicitarte && segundopaso } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>

</div>

<div if={ pedircita } style="display: grid;grid-template-columns:2fr 1fr;grid-template-rows:11vh;grid-template-areas:' ba ci';">
  <button if={ servicios && pedircita } style="grid-area:ci;" type="button"  onclick={ convertiruser }>Pedir Cita</button>
  <button  if={ servicios && pedircita } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>
  <button if={ precios && pedircita } style="grid-area:ci;" type="button"  onclick={ convertiruser }>Pedir cita</button>
  <button  if={ precios && pedircita } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>
  <button if={ felicitarte && pedircita }  style="grid-area:ci;" type="button"  onclick={ convertiruser }>pedir cita</button>
  <button  if={ felicitarte && pedircita } style="grid-area:ba;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ volverunpaso }>
    <i class="material-icons">skip_previous</i>
  </button>
</div>

<div if={ llenarformulario }  style="display: grid;grid-template-columns:1fr 1fr;grid-template-rows:11vh;grid-template-areas:'ma ho';">
  <button  if={ llenarformulario  } style="grid-area:ma;background:red;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ negarcita }>
    <i class="material-icons">close</i>
  </button>
  <button  if={ llenarformulario  } style="grid-area:ho;background:green;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored" type="button"  onclick={ agregarunacita }>
    <i class="material-icons">done</i>
  </button>
</div>

  </div>
</div>
 </div>


  <style>

    .demo-card-wide > .mdl-card__title {
    color: #fff;
    height: 33vh;

    background: url('/client/assets/img/welcome_card.jpg') center / cover;
  }
  .demo-card-wide > .mdl-card__menu {
    color: #fff;
  }
  .mdl-tabs__tab{
    height: 33px!important;
    line-height: 11px!important; 
  }
  </style>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp" style="grid-area:tarjeta;width:auto;display: flex;flex-direction: column;margin: 0.92em 0.26em;">
    <div class="mdl-card__title">
      <div class="contenedor-imagen">

                        <style>
                          .demo-list-control {
                  width: 15vw;
                  padding: 0px 0;
                }

                .demo-list-radio {
                  display: inline;
                }
                .mdl-list__item{
                  padding:1px!important;
                  min-height:26px!important;
                  font-size:11px!important;
                  margin: 0 0!important;
                  font-weight: 300;
                }
                .mdl-list__item-secondary-action{
                  width: 22%!important;
                }
                </style>


        <div class="contenedor-genero">
          <label ref="generomasculino" class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect" for="icon-toggle-1">
            <input type="checkbox" id="icon-toggle-1" class="mdl-icon-toggle__input" onchange={ verificargenero }>
            <svg class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
              version="1.1" width="24" height="24" viewBox="0 0 24 24">
              <path id="gendermale" style="fill:grey;" d="M9,9C10.29,9 11.5,9.41 12.47,10.11L17.58,5H13V3H21V11H19V6.41L13.89,11.5C14.59,12.5 15,13.7 15,15A6,6 0 0,1 9,21A6,6 0 0,1 3,15A6,6 0 0,1 9,9M9,11A4,4 0 0,0 5,15A4,4 0 0,0 9,19A4,4 0 0,0 13,15A4,4 0 0,0 9,11Z" />
            </svg>

          </label>
          <label ref="generofemenino" class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect" for="icon-toggle-2">
            <input type="checkbox" id="icon-toggle-2" class="mdl-icon-toggle__input" onchange={ verificargenero }>
            <svg class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
              version="1.1" width="24" height="24" viewBox="0 0 24 24">
              <path id="genderfemale" style="fill:grey;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
            </svg>
          </label>
        </div>



        <ul class="demo-list-control mdl-list" style="margin: 0 0!important;">
          <li class="mdl-list__item">
            <span class="mdl-list__item-primary-content" style="color:white;">

              Notificaciones
            </span>
            <span class="mdl-list__item-secondary-action">
              <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-12">
                <span class="mdl-switch__label"></span>
                <input type="checkbox" id="switch-12" class="mdl-switch__input" checked>
              </label>
            </span>
          </li>
          <li class="mdl-list__item">
            <span class="mdl-list__item-primary-content" style="color:white;">

              Ubicacion GPS
            </span>
            <span class="mdl-list__item-secondary-action">
              <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-122">

                <span class="mdl-switch__label"></span>
                <input type="checkbox" id="switch-122" class="mdl-switch__input" checked>
              </label>
            </span>
          </li>
          <li class="mdl-list__item">
            <span class="mdl-list__item-primary-content" style="color:white;">
              Permitir usar camara
            </span>
            <span class="mdl-list__item-secondary-action">
              <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-312">

                <span class="mdl-switch__label"></span>
                <input type="checkbox" id="switch-312" class="mdl-switch__input" checked>
              </label>
            </span>
          </li>
          <li class="mdl-list__item">
            <span class="mdl-list__item-primary-content" style="color:white;">
              Permitir usar microfono
            </span>
            <span class="mdl-list__item-secondary-action">
              <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-1233">

                <span class="mdl-switch__label"></span>
                <input type="checkbox" id="switch-1233" class="mdl-switch__input" checked>
              </label>
            </span>
          </li>
        </ul>
        <div class="contenedor-recordar">
            <span>Recordar:</span>
            <div class="contenedor-ratios">
              <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-1" style="font-size: 11px!important;"
                onclick={ creardiacookie }>
                <input ref="solohoy" type="radio" id="option-1" class="mdl-radio__button" name="options" value="1"
                  checked>
                <span class="mdl-radio__label">Solo Hoy</span>
              </label>
  
              <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-2" style="font-size: 11px!important;"
                onclick={ crearsemanacookie }>
                <input ref="unasemana" type="radio" id="option-2" class="mdl-radio__button" name="options" value="2">
                <span class="mdl-radio__label">Todo el mes</span>
              </label>
            </div>
          </div>

       </div>
        <div class="contenedor-permisos">
          <img style="align-self:center;" src={ this.opts.dato.info.avatar } alt="" width="17%" onclick={ siguienteAvatar }>
          <div style="align-self:center;display:flex;flex-direction: row; justify-content:space-around;width: 100%;">
          <h2 style="align-self:start;" class="mdl-card__title-text" onclick={ cambiarnombrecliente }>

            { this.opts.dato.info.nombre }


          </h2>
          <div style="align-self:end;margin: 0px 0px 0px 26px;padding: 0px 0;" class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
              <label class="mdl-button mdl-js-button mdl-button--icon" for="es12" style="top:0px;">
                <i class="material-icons">cake </i>
              </label>
              <div class="mdl-textfield__expandable-holder" style="max-height: 26px;">
                <input class="mdl-textfield__input" type="date" id="es12" style="max-height: 30px;">
              </div>
            </div>
            </div>
          <div class="contenedor-subscripcion" style="align-self:center;">

            <svg if={ noestasub } class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
              <path id="genderfemalsae" style="fill:transparent;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
            </svg>
            <span style="font-size: 11px!important;" if={ noestasub }>Recibir descuentos semanales al Whatsapp</span>
            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-subs" if={ noestasub }>
              <input type="checkbox" class="mdl-switch__input" id="switch-subs" onchange={ verificarsubscribcion }>
              <span class="mdl-switch__label"></span>
            </label>


            <input class="mdl-textfield__input" type="text" id="sample1111" ref="codigopais" value={
              this.opts.dato.info.codigocel } if={ quieresub }>

            <div class="mdl-textfield mdl-js-textfield" if={ quieresub } style="max-width: 80%!important;">
              <input class="mdl-textfield__input" type="number" id="sample1" ref="numerociudad" value={ 658-64-209 }>
              <label class="mdl-textfield__label" for="sample1">Whatsapp Number</label>
            </div>

            <button type="button" name="button" onclick={ subscribcionEmail } if={ quieresub }>
              <i class="material-icons">add</i>
            </button>

            <svg if={ subscrito } class="mdl-icon-toggle__label material-icons" xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="24" height="24" viewBox="0 0 24 24">
              <path id="genderfemalsae" style="fill:transparent;" d="M12,4A6,6 0 0,1 18,10C18,12.97 15.84,15.44 13,15.92V18H15V20H13V22H11V20H9V18H11V15.92C8.16,15.44 6,12.97 6,10A6,6 0 0,1 12,4M12,6A4,4 0 0,0 8,10A4,4 0 0,0 12,14A4,4 0 0,0 16,10A4,4 0 0,0 12,6Z" />
            </svg>
            <span if={ subscrito }>
              <span style="font-size: 11px!important;">Subscrito: </span>
              <span style="font-size: 11px!important;">{ this.opts.dato.info.whatsapp }</span>
            </span>
            <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-subs" if={ subscrito }>
              <input type="checkbox" class="mdl-switch__input" id="switch-subs" onchange={ norecibirnewsletter }
                checked>
              <span class="mdl-switch__label"></span>
            </label>
          </div> 
        </div>
    </div>




      <div class="mdl-card__supporting-text" style="width:100%!important;">

        <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">

          <div class="mdl-tabs__tab-bar" style="justify-content: space-between!important;height: 33px!important;">
            <a href="#gift-panel" class="mdl-tabs__tab is-active">
              <i class="material-icons">loyalty</i>
            </a>
            <a href="#basket-panel" class="mdl-tabs__tab">
              <i class="material-icons">local_grocery_store</i>
            </a>
            <a href="#forms-panel" class="mdl-tabs__tab">
              <i class="material-icons">local_shipping</i>
            </a>
          </div>
          <div class="mdl-tabs__panel  is-active" id="gift-panel">
            <!-- Textfield with Floating Label -->
            <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e7ccd799;width: auto;padding: 1em 1em;">
              <div style="display: grid;grid-template-columns: auto 11vw ;grid-template-rows: 40vh;">

                <div id="acavieneelticket" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>
                <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                  <div each={ ticket , i in this.opts.dato.qrcode } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                    <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={
                      mostrardetallesticket.bind(this, ticket, i) }>{ ticket.status }</button>
                  </div>
                </div>


              </div>


            </div>
          </div>

          <div class="mdl-tabs__panel" id="basket-panel">
            <!-- Textfield with Floating Label -->
            <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e1dcb799;width: auto;padding: 1em 0.5em;">
              <p>Cotizacion de productos y confirmacion de compra</p>

            </div>
          </div>
          <div class="mdl-tabs__panel" id="forms-panel">
            <!-- Textfield with Floating Label -->
            <div class="mdl-card mdl-shadow--4dp" style="height:44vh;background-color: #e5fff799;width: auto;padding: 1em 0.5em;">
              <div style="display: grid;grid-template-columns: 11vw auto;grid-template-rows: 40vh;">

                <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                  <div each={ formulario , i in this.opts.dato.forms } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                    <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={
                      cambiarlosformularios.bind(this, formulario, i) }>{ formulario.tema }</button>
                  </div>
                </div>

                <div id="acavieneelformularioforms" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

              </div>
            </div>
          </div>



        </div>


      </div>
      <div class="mdl-card__actions mdl-card--border" style="padding: 1.24em 0.92em;">

        <li style="display: grid;grid-template-columns: 0.11fr 0.82fr 0.1fr 0.05fr   ;align-items: center;text-align: center;grid-template-rows: 2vh;">
          <img src={ this.opts.dato.info.country_flag } alt="" style="width: 51%;">
          <div class="">

            <div style="font-size: 9px!important;">

              { this.opts.dato.info.continent_name } > { this.opts.dato.info.country_name } > {
              this.opts.dato.info.district } > { this.opts.dato.info.state_prov }

            </div>

            <div style="font-size: 8px!important;">
              Descarga { this.opts.dato.info.urlEntrada } a
              { this.opts.dato.info.downsp.downlink } Mb/s en una conexion { this.opts.dato.info.downsp.effectiveType
              }/{ this.opts.dato.info.connection_type }
              empresa { this.opts.dato.info.org }
            </div>
          </div>
          <div style="font-size: 11px!important;">
            { this.opts.dato.info.country_flag_emoji_native }
          </div>

          <button id="demo-menu-lower-right" class="mdl-button mdl-js-button mdl-button--icon" style="margin:0 auto!important;">
            <i class="material-icons">g_translate</i>
          </button>

          <ul class="mdl-menu mdl-menu--top-right mdl-js-menu mdl-js-ripple-effect" for="demo-menu-lower-right">
            <li class="mdl-menu__item" each={ item , i in this.opts.dato.info.languagesArray }>
              {i}-{item.code},{item.name}, {item.native}
            </li>

          </ul>

        </li>

      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick={ cerrarperfilcliente }>
          <i class="material-icons">skip_previous</i>
        </button>
      </div>
    </div>


    <script type="text/javascript">
      // import dispatcher from '../../app/dispatcher'
      // console.log(dispatcher);
      const tag_welcome = this
      tag_welcome.numerodeconectados = 'calculando...'
      tag_welcome.estaAdentrodelchat = false
      tag_welcome.fueraelchatSolouna = 'single'
      tag_welcome.datosvisitaychatme = 'split'
      tag_welcome.palabracorrecta = 'ocultar'
      tag_welcome.quierentrar = false
      tag_welcome.noestasub = true
      tag_welcome.quieresub = false
      tag_welcome.subscrito = false
      tag_welcome.esteessuveredicto = 'abierto';
      tag_welcome.mainestadovisual = true
      tag_welcome.quieroelbot = true


      tag_welcome.inicial = true
      tag_welcome.servicios = false
      tag_welcome.segundopaso = false
      tag_welcome.felicitarte = false
      tag_welcome.precios = false
      tag_welcome.pedircita = false
      tag_welcome.llenarformulario = false
      tag_welcome.hacerunacita = true




      tag_welcome.negarcita = () => {
        tag_welcome.llenarformulario = !tag_welcome.llenarformulario
        tag_welcome.pedircita = !tag_welcome.pedircita
        tag_welcome.hacerunacita = !tag_welcome.hacerunacita
      }
      tag_welcome.agregarunacita = () => {
        console.log('esto se conecta con unabase de datos mayor');

        tag_welcome.mainestadovisual = true
        tag_welcome.quieroelbot = true
        tag_welcome.hacerunacita = true

        tag_welcome.inicial = true
        tag_welcome.servicios = false
        tag_welcome.segundopaso = false
        tag_welcome.felicitarte = false
        tag_welcome.precios = false
        tag_welcome.pedircita = false
        tag_welcome.llenarformulario = false
        tag_welcome.hacerunacita = true
        let objcreado = {
          dia: tag_welcome.refs.fecha.value,
          mes: tag_welcome.refs.mes.value,
          hora: tag_welcome.refs.horario.value,
          email: tag_welcome.refs.correo.value,
          comen: tag_welcome.refs.comentario.value,
          status: 1,
          aprobado: false,
        }

        tag_welcome.opts.dato.qrcode.push(objcreado)

      }




      tag_welcome.convertiruser = (e) => {
        tag_welcome.llenarformulario = !tag_welcome.llenarformulario
        tag_welcome.pedircita = !tag_welcome.pedircita
        tag_welcome.hacerunacita = !tag_welcome.hacerunacita
        tag_welcome.now = moment()._d
        console.log(tag_welcome.now);
      }



      tag_welcome.darbeneficios = (e) => {
        let siguiente = e.target.attributes['data-siguiente'].value
        console.log(siguiente);
        switch (siguiente) {
          case 'servicio':
            tag_welcome.segundopaso = false
            tag_welcome.precios = false
            tag_welcome.felicitarte = false
            tag_welcome.servicios = true
            tag_welcome.pedircita = true
            break;
          case 'precios':
            tag_welcome.segundopaso = false
            tag_welcome.precios = true
            tag_welcome.felicitarte = false
            tag_welcome.servicios = false
            tag_welcome.pedircita = true
            break;
          case 'felicidad':
            tag_welcome.segundopaso = false
            tag_welcome.precios = false
            tag_welcome.felicitarte = true
            tag_welcome.servicios = false
            tag_welcome.pedircita = true
            break;
          default:

        }

      }
      tag_welcome.volverunpaso = () => {
        tag_welcome.servicios = false
        tag_welcome.precios = false
        tag_welcome.felicitarte = false
        tag_welcome.inicial = true
        tag_welcome.segundopaso = false

      }
      tag_welcome.preguntarbotchat = (e) => {


        let pregunta = e.target.attributes['data-pregunta'].value
        console.log(pregunta);

        switch (pregunta) {
          case '1':
            console.log('hola vida');
            // let msjuno = ['vacio','Que servicios tienes?']
            // let msjdos = ['Puede escoger entre estos tres servicios','vacio']
            // let msjtre = ['Servico 1','vacio']
            // let msjcua = ['Servico 2','vacio']
            // let msjcin = ['Servico 3','vacio']
            //
            //
            // tag_welcome.opts.dato.botc.push(msjuno)
            // tag_welcome.crearburbujaruser(msjuno[1])
            // tag_welcome.opts.dato.botc.push(msjdos)
            // tag_welcome.crearburbujabotch(msjdos[0])
            // tag_welcome.opts.dato.botc.push(msjtre)
            // tag_welcome.crearburbujabotch(msjtre[0])
            // tag_welcome.opts.dato.botc.push(msjcua)
            // tag_welcome.crearburbujabotch(msjcua[0])
            // tag_welcome.opts.dato.botc.push(msjcin)
            // tag_welcome.crearburbujabotch(msjcin[0])
            tag_welcome.inicial = false
            tag_welcome.precios = false
            tag_welcome.felicitarte = false
            tag_welcome.servicios = true
            tag_welcome.segundopaso = true
            break;
          case '2':
            tag_welcome.inicial = false
            tag_welcome.felicitarte = false
            tag_welcome.servicios = false
            tag_welcome.precios = true
            tag_welcome.segundopaso = true
            break;
          case '3':
            tag_welcome.inicial = false
            tag_welcome.precios = false
            tag_welcome.servicios = false
            tag_welcome.felicitarte = true
            tag_welcome.segundopaso = true
            break;
          default:
            console.log('eeeeeee');
        }






      }

      tag_welcome.abrirchatconbot = () => {

        tag_welcome.quieroelbot = !tag_welcome.quieroelbot
        database.then((db) => {
          let usuarioStore = db.transaction('client', 'readwrite').objectStore('client');
          return usuarioStore.getAll()

        }).then((items) => {
          tag_welcome.opts.dato.botc = items[0].botc

          for (var i = 0; i < items[0].botc.length; i++) {

            if (items[0].botc[i][0] === 'vacio') {
              tag_welcome.crearburbujaruser(items[0].botc[i][1])
            }
            if (items[0].botc[i][1] === 'vacio') {
              tag_welcome.crearburbujabotch(items[0].botc[i][0])
            }

          }


        })


      }


      tag_welcome.crearburbujabotch = (contenido) => {
        let b = tag_welcome.refs.mensajesbot
        let d = document.createElement('li')
        let bp = document.createElement('span')
        d.style.listStyle = 'none'
        d.style.float = 'left'
        d.style.clear = 'both'
        d.style.borderRadius = '2px 11px 11px 11px'
        d.style.background = 'rgb(162, 165, 168)'
        d.style.padding = '.5em .5em'
        d.style.margin = '.5em .5em'
        d.style.boxShadow =
          '0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12)'
        bp.style.fontWeight = "800"
        bp.style.color = 'white'

        b.appendChild(d)
        d.appendChild(bp)
        let bpb = document.createTextNode(contenido);
        bp.appendChild(bpb)
      }
      tag_welcome.crearburbujaruser = (contenido) => {
        let b = tag_welcome.refs.mensajesbot
        let c = document.createElement('li')
        let cp = document.createElement('span')
        c.style.listStyle = 'none'
        c.style.float = 'right'
        c.style.clear = 'both'
        c.style.borderRadius = '11px 11px 2px 11px'
        c.style.background = '#0084ff'
        c.style.padding = '.5em .5em'
        c.style.margin = '.5em .5em'
        c.style.boxShadow =
          '0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12)'
        cp.style.fontWeight = "800"
        cp.style.color = 'white'
        b.appendChild(c)
        c.appendChild(cp)
        let cpc = document.createTextNode(contenido);
        cp.appendChild(cpc)
      }



      tag_welcome.abrirchatconowner = () => {
        tag_welcome.mainestadovisual = !tag_welcome.mainestadovisual
      }

      tag_welcome.cerrarperfilcliente = () => {

      document.getElementById('acarenderintro').style.display = "none"
      document.getElementById('headerserver').style.display = "flex"
      document.querySelector('chat-cliente').style.gridTemplateRows = "7vh"
      document.querySelector('chat-cliente').style.padding = "0.24em 0.92em"
      document.getElementById('clientedesconocidop').style.display ="none"
      document.getElementById('clientedesconocidob').style.display ="none"
      document.getElementById('clientereconocidop').style.display ="block"
      document.getElementById('clientereconocidob').style.display ="block"
      tag_welcome.unmount(true)
      }


      tag_welcome.cambiarnombrecliente = () => {

        let respuesta = new Promise((resolve, reject) => {
          let a = resolve(window.prompt('Como te llamas', this.opts.dato.info.nombre))
          return a
        });
        respuesta.then((res) => {
          let y = 'Pon tu nombre...'
          let b = (res === null || res === '') ? y : res;
          this.opts.dato.info.nombre = b
          tag_welcome.update()
          return
        })

      }

      tag_welcome.cambiarlosformularios = (es, i) => {
        let formularioHere = document.querySelector('#acavieneelformularioforms')

        formularioHere.innerHTML = '<formulariocliente></formulariocliente>'

        riot.mount('formulariocliente', {
          info: es,
          index: i
        })
      }


      tag_welcome.mostrardetallesticket = (es, i) => {
        let detallestickethere = document.querySelector('#acavieneelticket')

        detallestickethere.innerHTML = '<detallesticket></detallesticket>'

        riot.mount('detallesticket', {
          info: es,
          index: i
        })
      }






      tag_welcome.cerrarytranformar = (e) => {


        let asd = document.querySelector('#marqueinicio')

        let asw = asd.attributes
        let aaa = asd.style


        console.log(asw);
        console.log(aaa);
        document.getElementById('conversionexitosadiv').style.display = "grid"
        document.getElementById('primeravisitadiv').style.display = "none"
        tag_welcome.unmount(true)
        // console.log(e.target);
        // console.log(tag_welcome);
        // tag_welcome.esteessuveredicto = 'cerrado';
      }




      // tag_welcome.contareltiempodevisita = () => {
      //   let gji = tag_welcome.opts.dato.info.tiempoEntrada.split(' ')
      //   let DateTime =Date.parse(tag_welcome.opts.dato.info.tiempoEntrada);
      //   let ahora = Date.now() - DateTime
      //   tag_welcome.si = tag_welcome.millisToMinutesAndSeconds(ahora)
      //
      //   window.setInterval(function(){
      //
      //   let ahora = Date.now() - DateTime
      //   tag_welcome.si = tag_welcome.millisToMinutesAndSeconds(ahora)
      //     /// call your function here
      //     console.log(tag_welcome.si);
      //     tag_welcome.update()
      //   }, 10000);
      //
      // }
      //
      // tag_welcome.millisToMinutesAndSeconds = (millis) => {
      //
      //   let minutes = Math.floor(millis / 60000);
      //   let seconds = ((millis % 60000) / 1000).toFixed(0);
      //   return minutes + " minutos y " + (seconds < 10 ? '0' : '') + seconds + " segundos";
      // }



      tag_welcome.dedondeentroesteusuario = () => {
        let ghi = tag_welcome.opts.dato.info.urlEntrada
        let ewr = ghi.split('/')
        if (ewr[3] === '') {
          return 'pagina inicio'
        } else {
          return ewr[3]
        }
      }

      tag_welcome.quenivelesesteusuario = () => {
        let aaw = tag_welcome.opts.dato.info.nivel.split('/')
        return aaw[1]
      }


      tag_welcome.creardiacookie = () => {

        let e = document.cookie.split('=')
        console.log(e);
        document.cookie = 'cliente=' + e[1] + ';max-age=86400;'

      }
      tag_welcome.crearsemanacookie = () => {

        let x = tag_welcome.refs.solohoy
        let y = tag_welcome.refs.unasemana
        let g = document.cookie.split('=')
        console.log(g);
        document.cookie = 'cliente=' + g[1] + ';max-age=604800;'

      }







      tag_welcome.cambiarnombre = () => {
        let data = {
          componente: 'componente-dos',
          datosmodif: tag_welcome.opts.dato.info.nombre
        }
        dispatcher.trigger('crear_modal', data)
      }

      tag_welcome.norecibirnewsletter = () => {
        if (tag_welcome.subscrito === true) {
          tag_welcome.subscrito = false
          tag_welcome.noestasub = !tag_welcome.noestasub
          console.log('des-subscrito');
        }
      }

      tag_welcome.verificarsubscribcion = () => {

        if (tag_welcome.noestasub === true) {
          tag_welcome.noestasub = false
          tag_welcome.quieresub = !tag_welcome.quieresub
        }

      }



      tag_welcome.subscribcionEmail = () => {
        let cod = tag_welcome.refs.codigopais.value
        let num = tag_welcome.refs.numerociudad.value
        tag_welcome.opts.dato.info.whatsapp = cod + ' ' + num


        if (tag_welcome.subscrito === false) {
          tag_welcome.quieresub = false
          tag_welcome.subscrito = !tag_welcome.subscrito
        }


      }



      tag_welcome.verificargenero = (e) => {
        let a = tag_welcome.refs.generomasculino
        let b = tag_welcome.refs.generofemenino
        // console.log(a);
        let x = a.className.split(' ')
        let y = b.className.split(' ')


        if (x.indexOf('is-checked') > -1) {
          console.log('masculino check');
          tag_welcome.opts.dato.info.genero = 'Masculino'
          b.classList.remove("is-checked")
          tag_welcome.siguienteAvatar()
        }
        if (y.indexOf('is-checked') > -1) {
          console.log('fememnino check');
          a.classList.remove("is-checked")
          tag_welcome.opts.dato.info.genero = 'Femenino'
          tag_welcome.siguienteAvatar()
        }

      }





      tag_welcome.siguienteAvatar = () => {

        switch (tag_welcome.opts.dato.info.genero) {
          case 'Masculino':
            console.log('masculino');
            let f = document.getElementById('gendermale').style.fill = "blue"
            let m = document.getElementById('genderfemale').style.fill = "grey"
            let arrayMasculino = [1, 2, 3, 4, 5, 6, 7]
            let numero = arrayMasculino[Math.floor(Math.random() * arrayMasculino.length)];
            let urlbase = "/client/assets/img/hombre-" + numero + ".png"
            tag_welcome.avatarhombreomujer = urlbase
            tag_welcome.opts.dato.info.avatar = urlbase
            break;
          case 'Femenino':
            console.log('femenino');

            let arrayFemenino = [1, 2, 3, 4, 5, 6]
            let num = arrayFemenino[Math.floor(Math.random() * arrayFemenino.length)];
            let fds = document.getElementById('genderfemale').style.fill = "pink"
            let gfd = document.getElementById('gendermale').style.fill = "grey"
            let urlSe = "/client/assets/img/mujer-" + num + ".png"
            tag_welcome.avatarhombreomujer = urlSe
            tag_welcome.opts.dato.info.avatar = urlSe
            break;

          default:
            console.log('default');
            tag_welcome.opts.dato.info.avatar = "/client/assets/img/default.png"

        }

      }

      tag_welcome.modalypreguntasecreta = () => {
        let data = {
          componente: 'componente-uno',
          datosmodif: ''
        }
        dispatcher.trigger('crear_modal', data)
      }


      tag_welcome.ocultarchatydatosvisita = () => {
        let a = tag_welcome.refs.ventanachatarriba



        if (a.style.display === "none") {
          tag_welcome.palabracorrecta = 'ocultar'
          a.style.display = "";
        } else {
          a.style.display = "none";
          tag_welcome.palabracorrecta = 'mostrar'
        }
      }



      //Si esta conectado el owner puedes mandarle mensajes a su socket personal
      tag_welcome.analizarmensaje = (e) => {
        if (e.which == 13) {
          let b = tag_welcome.refs.mensajesleidos
          let a = tag_welcome.refs.mensajenuevo


          tag_welcome.opts.dato.mnsj.push([a.value, 'vacio'])

          a.value = " "
          socket.emit('chat:huespedSend', tag_welcome.opts.dato)
        }
      }




      this.on('mount', function () {
        componentHandler.upgradeDom();
        // tag_welcome.contareltiempodevisita()
        // console.log('se update los componentes');



      })

      socket.on('owner:status', (data) => {

        tag_welcome.ownerconectado = data.connect
        tag_welcome.update()
      })
      this.on('updated', function () {
        componentHandler.upgradeDom();
        // console.log(this.opts.dato.info.tiempoEntrada);

        // console.log('se update los componentes');
        socket.emit('preguntar')
      })
      this.on('unmount', function () {

        socket.emit('updateuserinfo', tag_welcome.opts.dato)
        database.then((db) => {
          let usuarioStore = db.transaction('client', 'readwrite').objectStore('client');
          usuarioStore.clear()
          usuarioStore.put(tag_welcome.opts.dato);
          usuarioStore.complete

        }).then(() => {
          console.log('database cleinte update cuando se cerro el dashboard');
        })
      })
    </script>



</contenedorchatowener>
<formulariocliente>

  <div ref="contenedordinamico" class="contenedorformsdecliente">
    <div each={i in arraikeys} style="width: 77%;">
      <label>
        <div>{ i } :</div>
        <textarea type="text" name={ i } ref={ 'inputdesignado' + i } placeholder={ opts.info[i] } value={ opts.info[i]
          }></textarea>
      </label>
    </div>
  </div>

  <button type="button" name="button" style="left: 0.9em !important;" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab"
    onclick={ cerrarestecomponente }>
    <i class="material-icons">close</i>
  </button>
  <button type="button" name="button" style="left: 17em !important;" class="botonguardarform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab"
    onclick={ mandarlosnuevosdatos }>
    <i class="material-icons">add</i>
  </button>

  <script type="text/javascript">
    const tag_formulario = this
    let yes = Object.keys(opts.info)
    yes.shift()
    tag_formulario.arraikeys = yes
    console.log(tag_formulario.arraikeys);

    tag_formulario.cerrarestecomponente = (e) => {
      tag_formulario.unmount(true)
      e.preventDefault()
    }

    tag_formulario.mandarlosnuevosdatos = () => {
      tag_formulario.contenedorinputs = tag_formulario.refs.contenedordinamico
      let objetofinal = {}
      objetofinal['tema'] = opts.info.tema
      for (var i = 0; i < tag_formulario.contenedorinputs.children.length; i++) {
        let buscar = 'inputdesignado' + tag_formulario.contenedorinputs.children[i].children[0].children[1].name
        objetofinal[tag_formulario.arraikeys[i]] = tag_formulario.refs[buscar].value

      }

      tag_formulario.root.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement.parentElement
        .parentElement.parentElement.parentElement._tag.opts.dato.forms[opts.index] = objetofinal
      riot.update()
      tag_formulario.unmount(true)


    }
  </script>
</formulariocliente>
<detallesticket>


  <h1>{ this.opts.info.aprobado}</h1>
  <h1>{ this.opts.info.status}</h1>


  <button type="button" name="button" style="left: 0.9em !important;" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab"
    onclick={ cerrarestecomponente }>
    <i class="material-icons">close</i>
  </button>
  <script type="text/javascript">
    this.cerrarestecomponente = (e) => {
      this.unmount(true)
      e.preventDefault()
    }
  </script>



</detallesticket>
