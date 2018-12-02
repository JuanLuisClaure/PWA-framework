<panel-perfil>
  <!-- <style media="screen">
  contenidoperfil{
    display: grid;
    grid-template-columns:1fr;
    height: 100vh;
    }
  </style> -->


    <span style="padding:0.44em;position:fixed;display:flex;flex-direction: column;">

    <button style="margin: 0.3em 0em;" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ ocultardrawer } >
    <i class="material-icons">{(!estaconeldrawer)? 'art_track':'dehaze'}</i>
    </button>

    <button style={ (!perfilocambios)? background-color:green:background-color:rgba(158,158,158, 0.20); }  class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ cambiarperfil }>
    <i class="material-icons">{(!perfilocambios)? 'save':'create'}</i>
    </button>


    </span>

    <curriculum data={ this.opts.data } if={ perfilocambios }></curriculum>
  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->
  <!-- aca esta la parte de editar toda la informacion
  para ser mas ordenados con el html ya que estamos
  hacciendo todo en el mismo componentes, luego
  refactorizamos los botones y demas, por ahora es hacerlo
  funcionar hasta el chat interactivo y su website -->
  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->



  <div class="editarperfil" if={ !perfilocambios } style="background-color: #ffffff00;">





    <div class="header_editar_perfil">
      <h5>nombre</h5>
    </div>
    <div class="formulario_nombre_perfil">
      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input" type="text" ref="ponernombre" placeholder={ opts.data.nombre } value={ opts.data.nombre }>
          <label class="mdl-textfield__label" style="top: 0px;color: rgba(98, 46, 165, 0.49);" >nombre</label>
        </div>

      </div>
      <div class="">
        <p>coloca el nombre completo</p>
        <hr>

        </div>

        <div class="header_editar_perfil">
          <h5>Profesion</h5>
        </div>
        <div class="formulario_profesion_perfil">
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input class="mdl-textfield__input" type="text" ref="ponerprofesion" placeholder={ opts.data.profesion } value={ opts.data.profesion }>
              <label class="mdl-textfield__label" style="top: 0px;color: rgba(98, 46, 165, 0.49);">profesion.</label>
            </div>

          </div>
          <div class="">
            <p>cual es tu titulo profesionl o titulo de tu cargo?</p>
            <hr>

            </div>
            <div class="header_editar_perfil">
              <h5>experiencia</h5>
            </div>
            <div class="formulario_exp_perfil">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" ref="ponerexperiencia" placeholder={ opts.data.exp } value={ opts.data.exp }>
                  <label class="mdl-textfield__label" style="top: 0px;color: rgba(98, 46, 165, 0.49);" >exp.</label>
                </div>
              </div>
              <div class="">
                <p>cuantos años de experiencia tienes trabajando?</p>
                <hr>
                </div>
                <div class="header_editar_perfil">
                  <h5>Residencia</h5>
                </div>
                <div class="formulario_residencia_perfil">
                  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <input class="mdl-textfield__input" type="text" ref="ponerresidencia" placeholder={ opts.data.residencia } value={ opts.data.residencia }>
                      <label class="mdl-textfield__label" style="top: 0px;color: rgba(98, 46, 165, 0.49);">residencia</label>
                    </div>
                  </div>
                  <div class="">
                    <p>Donde vivis actualmente?</p>
                    <hr>
                    </div>
                    <div class="header_editar_perfil">
                      <h5>Biografia</h5>
                    </div>
                    <div class="formulario_bio_perfil">

                      <div class="mdl-textfield mdl-js-textfield">
                        <textarea class="mdl-textfield__input" type="text" style="height:11em;" ref="ponerbiografia" placeholder={ opts.data.biografia } value={ opts.data.biografia }></textarea>
                        <label class="mdl-textfield__label" style="top: 0px;color: rgba(98, 46, 165, 0.49);">Biografia</label>
                      </div>

                    </div>
                    <div class="">

                      <p>Cuentanos un poco de vos</p>
                      <hr>

                      </div>



                      <div class="header_editar_perfil">
                        <h5>Historial</h5>
                      </div>
                      <div class="formulario_historial_perfil" style="height: 100%;">

                        <div style="display: grid;grid-template-columns: 17vw 50vw;grid-template-rows: 66vh;grid-gap: 20px;">

                          <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                            <div each={ historial , i in opts.data.historial } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                              <button class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="background-color:transparent!important;color:red;" onclick={ borraresteobj.bind(this, opts.data.historial, i) }>
                                  <i class="material-icons">clear</i>
                              </button>
                              <label>
                                # { i }
                              </label>
                                <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ cambiaresteobj.bind(this, historial, i) }>{ historial.empresa }</button>
                            </div>
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" style="background-color:#bada55;" onclick={ agregaresteobj.bind(this, opts.data.historial) }>
                              <i class="material-icons">add</i>
                            </button>
                          </div>

                          <div id="acavieneelformulario" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

                        </div>






                      </div>
                      <div class="">

                        <p>Selecciona uno de tus trbajos anteriores y edita su contenido </p>
                        <hr>

                      </div>



                      <div class="header_editar_perfil">
                        <h5>Habilidades</h5>
                      </div>
                      <div class="formulario_historial_perfil" style="height: 100%;">

                        <div style="display: grid;grid-template-columns: 17vw 50vw;grid-template-rows: 66vh;grid-gap: 20px;">

                          <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                            <div each={ habilidad , i in opts.data.skills } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                              <button class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="background-color:transparent!important;color:red;" onclick={ borraresteobj.bind(this,opts.data.skills, i) }>
                                  <i class="material-icons">clear</i>
                              </button>
                              <label>
                                # { i }
                              </label>
                                <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ cambiarestahabilidad.bind(this, habilidad, i) }>{ habilidad.name }</button>
                            </div>
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" style="background-color:#bada55;" onclick={ agregarestehabilidad }>
                              <i class="material-icons">add</i>
                            </button>
                          </div>

                          <div id="acavieneelformulariohabilidad" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

                        </div>






                      </div>
                      <div class="">

                        <p>Selecciona una de tus habilidades y edita </p>
                        <hr>

                      </div>


                      <div class="header_editar_perfil">
                        <h5>INTERESES</h5>
                      </div>
                      <div class="formulario_historial_perfil" style="height: 100%;">

                        <div style="display: grid;grid-template-columns: 17vw 50vw;grid-template-rows: 66vh;grid-gap: 20px;">

                          <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                            <div each={ intereses , i in opts.data.interest } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                              <button class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="background-color:transparent!important;color:red;" onclick={ borraresteobj.bind(this,opts.data.interest, i) }>
                                  <i class="material-icons">clear</i>
                              </button>
                              <label>
                                # { i }
                              </label>
                                <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ cambiaresteintereses.bind(this, intereses, i) }>{ intereses.nickname }</button>
                            </div>
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" style="background-color:#bada55;" onclick={ agregaresteintereses }>
                              <i class="material-icons">add</i>
                            </button>
                          </div>

                          <div id="acavieneelformulariointereses" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

                        </div>






                      </div>
                      <div class="">

                        <p>Selecciona uno de tus intereses y edita lo </p>
                        <hr>

                      </div>




                      <div class="header_editar_perfil">
                        <h5>IDIOMAS</h5>
                      </div>
                      <div class="formulario_historial_perfil" style="height: 100%;">

                        <div style="display: grid;grid-template-columns: 17vw 50vw;grid-template-rows: 66vh;grid-gap: 20px;">

                          <div style="display:grid;grid-template-rows:auto;grid-template-columns:1fr;grid-gap: 11px;padding:1em;align-items: center;overflow: auto;overflow-y: scroll;">
                            <div each={ idioma , i in opts.data.idiomas } style="display:grid;grid-template-columns:0.44fr 0.44fr 4fr;justify-content: space-evenly;align-items: center;">
                              <button class="mdl-button mdl-js-button mdl-button--icon mdl-button--colored" style="background-color:transparent!important;color:red;" onclick={ borraresteobj.bind(this,opts.data.idiomas, i) }>
                                  <i class="material-icons">clear</i>
                              </button>
                              <label>
                                # { i }
                              </label>
                                <button class="botoneshistorial botoneshistorial--dirty" type="button" name="button" onclick={ cambiarestelenguaje.bind(this, idioma, i) }>{ idioma.lenguaje }</button>
                            </div>
                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect" style="background-color:#bada55;" onclick={ agregaresteleanguaje }>
                              <i class="material-icons">add</i>
                            </button>
                          </div>

                          <div id="acavieneelformulariolanguages" style="overflow: auto;overflow-y: scroll;height: 100%;position: relative;"></div>

                        </div>






                      </div>
                      <div class="">

                        <p>Selecciona uno de tus idiomas y edita </p>
                        <hr>

                      </div>


                      <div class="header_editar_perfil">
                        <h5>Redes Sociales</h5>
                      </div>
                      <div class="formulario_contactos_perfil">

                          <div each={ contacto , i in opts.data.contacto }>
                            <label  style="top: 0px;color: rgba(98, 46, 165, 0.49);">
                            <button class="mdl-button mdl-js-button mdl-button--icon extrabotoncontacto" style={ contacto.svg } type="button"></button>
                                  Link:
                              <input class="inputmiomui" type="text" ref={ 'linkcontactos' + i } placeholder={ contacto.link } value={ contacto.link }>
                            </label>
                          </div>

                      </div>
                      <div class="">

                        <p>Agrega el link a tu pagina</p>
                        <hr>

                      </div>




                    </div>






  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->
  <!-- |||||||||||||||||||FIN COMPONENTE EDITAR PERFIL||||||||||||||||||||-->
  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->
  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->
  <!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||-->



  <script type="text/javascript">

  const tag_perfil = this
  tag_perfil.estaconeldrawer = true
  tag_perfil.perfilocambios = true



  tag_perfil.agregarestehabilidad = () => {
    let respuesta = new Promise((resolve, reject) => {
      let a = resolve(window.prompt('el nombre de tu habilidad', 'nombre a mostrar'))
      return a
    });
    respuesta.then((nameempresa)=>{
      if(nameempresa !== null){
          let obj=    {name:nameempresa, nivel:null, descripcion:null}
          tag_perfil.infoowner.skills.push(obj)
          tag_perfil.update()
      }
    })
  }
  tag_perfil.agregaresteintereses = () => {
    let respuesta = new Promise((resolve, reject) => {
      let a = resolve(window.prompt('el nombre de tu interes', 'nombre a mostrar'))
      return a
    });
    respuesta.then((nameempresa)=>{
      if(nameempresa !== null){
          let obj={nickname:nameempresa, proyecto:null, intereses:null}
          tag_perfil.infoowner.interest.push(obj)
          tag_perfil.update()
      }
    })
  }
  tag_perfil.agregaresteleanguaje = () => {
    let respuesta = new Promise((resolve, reject) => {
      let a = resolve(window.prompt('el nuevo idioma', 'nombre a mostrar'))
      return a
    });
    respuesta.then((nameempresa)=>{
      if(nameempresa !== null){
          let obj={lenguaje:nameempresa,tiempo:null, hablado:null, redaccion:null, comprension:null, libros:null}
          tag_perfil.infoowner.idiomas.push(obj)
          tag_perfil.update()
      }
    })
  }
  tag_perfil.agregaresteobj = () => {

    let respuesta = new Promise((resolve, reject) => {
      let a = resolve(window.prompt('el nombre la empresa', 'nombre a mostrar'))
      return a
    });
    respuesta.then((nameempresa)=>{
      if(nameempresa !== null){
          let obj= {
               empresa:nameempresa,  duracion:null,cargo:null,
               jefedirecto:null, numreferencia:null,
               contribucion:null,
               aprendozaje:null
             }
          tag_perfil.infoowner.historial.push(obj)
          tag_perfil.update()
      }
    })
  }
  tag_perfil.borraresteobj = (cll, i) => {


    let result = new Promise((resolve, reject) => {
      let a = resolve(window.confirm(cll[i] ,' borrar'))
      return a
    });
    result.then((retorna)=>{
      if(retorna){
        let as = cll.splice(i, 1)
        tag_perfil.update()
      }
    })
  }
  tag_perfil.cambiarestelenguaje = (es, i) => {
    let formularioHere = document.querySelector('#acavieneelformulariolanguages')

    formularioHere.innerHTML='<formulariolanguages></formulariolanguages>'

    riot.mount('formulariolanguages', {info:es, index:i})
  }
  tag_perfil.cambiaresteintereses = (es, i) => {
    let formularioHere = document.querySelector('#acavieneelformulariointereses')

    formularioHere.innerHTML='<formulariointereses></formulariointereses>'

    riot.mount('formulariointereses', {info:es, index:i})
  }
  tag_perfil.cambiarestahabilidad = (es, i) => {
    let formularioHere = document.querySelector('#acavieneelformulariohabilidad')

    formularioHere.innerHTML='<formulariohabilidad></formulariohabilidad>'

    riot.mount('formulariohabilidad', {info:es, index:i})
  }
  tag_perfil.cambiaresteobj = (es, i) => {


    let formularioHere = document.querySelector('#acavieneelformulario')

    formularioHere.innerHTML='<formulario></formulario>'

    riot.mount('formulario', {info:es, index:i})

  }

    tag_perfil.ocultardrawer = ()=>{

      let drwr = window.document.querySelector('#drawerconteiner')
      let mn   = document.querySelector('#mainconteiner')
      drwr.style.transform = (!tag_perfil.estaconeldrawer)? "translateX(0)":"translateX(-240px)"
      mn.style.marginLeft = (!tag_perfil.estaconeldrawer)? "240px":"0"
      tag_perfil.estaconeldrawer = !tag_perfil.estaconeldrawer
    }



    tag_perfil.cambiarperfil = (e) => {
      let sts = e.target.textContent || e.path[0].textContent

      console.log(sts);
      switch (sts) {
        case' save ':
        let nombre = tag_perfil.refs.ponernombre.value
        let profesion = tag_perfil.refs.ponerprofesion.value
        let experiencia = tag_perfil.refs.ponerexperiencia.value
        let residencia = tag_perfil.refs.ponerresidencia.value
        let biografiaa = tag_perfil.refs.ponerbiografia.value
        let contacto0 = tag_perfil.refs.linkcontactos0.value
        let contacto1 = tag_perfil.refs.linkcontactos1.value
        let contacto2 = tag_perfil.refs.linkcontactos2.value
        let contacto3 = tag_perfil.refs.linkcontactos3.value
        let contacto4 = tag_perfil.refs.linkcontactos4.value
        let contacto5 = tag_perfil.refs.linkcontactos5.value



        tag_perfil.data.nombre = nombre
        tag_perfil.data.exp = experiencia
        tag_perfil.data.profesion = profesion
        tag_perfil.data.residencia = residencia
        tag_perfil.data.biografia = biografiaa
        tag_perfil.data.contacto[0].link = contacto0
        tag_perfil.data.contacto[1].link = contacto1
        tag_perfil.data.contacto[2].link = contacto2
        tag_perfil.data.contacto[3].link = contacto3
        tag_perfil.data.contacto[4].link = contacto4
        tag_perfil.data.contacto[5].link = contacto5


        let mens = new Promise((resolve, reject)=>{
          console.log('resolviendo?');

                let nos = this.opts.data.nombre
                let exs = this.opts.data.exp
                let fos = this.opts.data.foto
                let prs = this.opts.data.profesion
                let bis = this.opts.data.biografia
                let res = this.opts.data.residencia
                let cns = this.opts.data.contacto
                let als = this.opts.data.historial
                let sss = this.opts.data.skills
                let sts = this.opts.data.interest
                let mas = this.opts.data.idiomas
                let cas = this.opts.data.calificacion
                let mes = this.opts.data.resume
                let tas = this.opts.data.portafolio
                this.infoowner = new InfoOwner(fos,nos,exs,prs,bis,res,cns,als,sss,sts,mas,cas,mes,tas)

          let as = resolve(this.infoowner)
          return as
        });
        mens.then((values) => {

          socket.emit('informacion:owner',values)
        }).catch((err) => {
          tag_perfil.perfilocambios = false
        })

        tag_perfil.perfilocambios = true

          break;
        case ' create ':
        console.log('abriendo cambios');
        tag_perfil.perfilocambios = false
          break;
        case'save':
        let nombref = tag_perfil.refs.ponernombre.value
        let profesionf = tag_perfil.refs.ponerprofesion.value
        let experienciaf = tag_perfil.refs.ponerexperiencia.value
        let residenciaf = tag_perfil.refs.ponerresidencia.value
        let biografiaaf = tag_perfil.refs.ponerbiografia.value
        let contacto0f = tag_perfil.refs.linkcontactos0.value
        let contacto1f = tag_perfil.refs.linkcontactos1.value
        let contacto2f = tag_perfil.refs.linkcontactos2.value
        let contacto3f = tag_perfil.refs.linkcontactos3.value
        let contacto4f = tag_perfil.refs.linkcontactos4.value
        let contacto5f = tag_perfil.refs.linkcontactos5.value

        tag_perfil.opts.data.nombre = nombref
        tag_perfil.opts.data.exp = experienciaf
        tag_perfil.opts.data.profesion = profesionf
        tag_perfil.opts.data.residencia = residenciaf
        tag_perfil.opts.data.biografia = biografiaaf
        tag_perfil.opts.data.contacto[0].link = contacto0f
        tag_perfil.opts.data.contacto[1].link = contacto1f
        tag_perfil.opts.data.contacto[2].link = contacto2f
        tag_perfil.opts.data.contacto[3].link = contacto3f
        tag_perfil.opts.data.contacto[4].link = contacto4f
        tag_perfil.opts.data.contacto[5].link = contacto5f

        let men = new Promise((resolve, reject)=>{
          console.log('resolviendo?');






                let no = this.opts.data.nombre
                let ex = this.opts.data.exp
                let fo = this.opts.data.foto
                let pr = this.opts.data.profesion
                let bi = this.opts.data.biografia
                let re = this.opts.data.residencia
                let cn = this.opts.data.contacto
                let al = this.opts.data.historial
                let ss = this.opts.data.skills
                let st = this.opts.data.interest
                let ma = this.opts.data.idiomas
                let ca = this.opts.data.calificacion
                let me = this.opts.data.resume
                let ta = this.opts.data.portafolio
                this.infoowner = new InfoOwner(fo,no,ex,pr,bi,re,cn,al,ss,st,ma,ca,me,ta)

          let a = resolve(this.infoowner)
          return a
        });
        men.then((value) => {
          console.log(value);
          console.log(socket);
          socket.emit('informacion:owner',value)
        }).catch((err) => {
          tag_perfil.perfilocambios = false
        })

        tag_perfil.perfilocambios = true

          break;
        case 'create':
        console.log('abriendo cambios');
        tag_perfil.perfilocambios = false
          break;
        default:

      }

    }

    class InfoOwner {
      constructor(foto, nombre, exp,  profesion, biografia, residencia ,contacto, historial, skills, interest, idiomas, calificacion,  resume, portafolio) {
        this.foto = foto
        this.nombre = nombre
        this.exp = exp
        this.profesion = profesion
        this.biografia = biografia
        this.residencia = residencia
        this.contacto = contacto
        this.historial = historial
        this.skills = skills
        this.interest = interest
        this.idiomas = idiomas
        this.calificacion = calificacion
        this.resume = resume
        this.portafolio = portafolio
      }
    }




  </script>
</panel-perfil>
<curriculum>
  <style media="screen">
  curriculum{
  display: grid;
  grid-template-columns: 40vw auto;
  height: 100vh;
  }
  </style>
   <div class="panle-perfil" >

    <div class="marcaabrierto" style={ (!perfilobios)? 'background-color:#343d46':'background-color:#ffffff;'} >
.
    </div>
    <div  style={ this.opts.data.foto }>

    </div>
    <div  id="presentaciontarjeta" style="background-color:#ffffff;color:black;" >

      <button class="mdl-button mdl-js-button mdl-button--icon" style="width:100%!important;margin-bottom: 3em;border-radius: 0;display: flex;font-size:7px;align-items: center;justify-content: center;" onclick={ abrirselecionadoocultardemas }  >
        <span style="margin-left:4em;">ver historial de trabajos</span>
        <i class="material-icons" style="left: 92%;!important;">{ (perfilobios)? 'navigate_next':'navigate_before' }</i>
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
      <p>puedes editarlo y guardar sesion</p>
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
        <!-- Contact Chip -->
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

        </div>



<script type="text/javascript">
    const tag_curriculum = this
    tag_curriculum.perfilobios = true
    tag_curriculum.perfilocoment = true
    tag_curriculum.perfilolanguages = true
    tag_curriculum.perfilointerest = true
    tag_curriculum.perfiloskills  = true



    tag_curriculum.botondireccionarredessociales = (e) => {
      let vienede = e.target.name||e.path[0].name
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


</curriculum>
<formulario>

  <div ref="contenedordinamico" class="contenedordinamicodeinputs">
    <div each={i in arraikeys} class={ 'inputclass' + i } >
      <label>
        <div>{ i } :</div>
        <textarea type="text" name={ i } ref={ 'inputdesignado' + i } placeholder={ opts.info[i] } value={ opts.info[i] }></textarea>
      </label>
    </div>
  </div>

  <button type="button" name="button" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ cerrarestecomponente }>
      <i class="material-icons">close</i>
  </button>
  <button type="button" name="button" class="botonguardarform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ mandarlosnuevosdatos }>
    <i class="material-icons">add</i>
  </button>

  <h1></h1>
  <script type="text/javascript">

    const tag_formulario = this
    tag_formulario.arraikeys = Object.keys(opts.info)



    tag_formulario.cerrarestecomponente = (e) => {
      tag_formulario.unmount(true)
      e.preventDefault()
    }


    tag_formulario.mandarlosnuevosdatos = () => {
        tag_formulario.contenedorinputs = tag_formulario.refs.contenedordinamico
        let objetofinal =  {
             empresa:null,  duracion:null,cargo:null,
             jefedirecto:null, numreferencia:null,
             contribucion:null,
             aprendozaje:null
           }
        for (var i = 0; i < tag_formulario.contenedorinputs.children.length; i++) {
          let buscar = 'inputdesignado' + tag_formulario.contenedorinputs.children[i].children[0].children[1].name
          objetofinal[tag_formulario.arraikeys[i]] = tag_formulario.refs[buscar].value
        }

        tag_formulario.root.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.historial[opts.index] = objetofinal

        riot.update()

        tag_formulario.unmount(true)


    }
  </script>
</formulario>
<formulariohabilidad>

  <div ref="contenedordinamico" class="contenedordinamicodeinputs">
    <div each={i in arraikeys} class={ 'inputclass' + i } >
      <label>
        <div>{ i } :</div>
        <textarea type="text" name={ i } ref={ 'inputdesignado' + i } placeholder={ opts.info[i] } value={ opts.info[i] }></textarea>
      </label>
    </div>
  </div>

  <button type="button" name="button" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ cerrarestecomponente }>
      <i class="material-icons">close</i>
  </button>
  <button type="button" name="button" class="botonguardarform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ mandarlosnuevosdatos }>
    <i class="material-icons">add</i>
  </button>

  <h1></h1>
  <script type="text/javascript">

    const tag_formulario = this
    tag_formulario.arraikeys = Object.keys(opts.info)
    console.log(tag_formulario.arraikeys);

    tag_formulario.cerrarestecomponente = (e) => {
      tag_formulario.unmount(true)
      e.preventDefault()
    }

    tag_formulario.mandarlosnuevosdatos = () => {
        tag_formulario.contenedorinputs = tag_formulario.refs.contenedordinamico
        let objetofinal = {name:null, nivel:null, descripcion:null}
        for (var i = 0; i < tag_formulario.contenedorinputs.children.length; i++) {
          let buscar = 'inputdesignado' + tag_formulario.contenedorinputs.children[i].children[0].children[1].name
          objetofinal[tag_formulario.arraikeys[i]] = tag_formulario.refs[buscar].value
        }

        tag_formulario.root.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.skills[opts.index] = objetofinal

        riot.update()

        tag_formulario.unmount(true)


    }
  </script>
</formulariohabilidad>
<formulariointereses>

  <div ref="contenedordinamico" class="contenedordinamicodeinputs">
    <div each={i in arraikeys} class={ 'inputclass' + i } >
      <label>
        <div>{ i } :</div>
        <textarea type="text" name={ i } ref={ 'inputdesignado' + i } placeholder={ opts.info[i] } value={ opts.info[i] }></textarea>
      </label>
    </div>
  </div>

  <button type="button" name="button" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ cerrarestecomponente }>
      <i class="material-icons">close</i>
  </button>
  <button type="button" name="button" class="botonguardarform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ mandarlosnuevosdatos }>
    <i class="material-icons">add</i>
  </button>

  <h1></h1>
  <script type="text/javascript">

    const tag_formulario = this
    tag_formulario.arraikeys = Object.keys(opts.info)
    console.log(tag_formulario.arraikeys);

    tag_formulario.cerrarestecomponente = (e) => {
      tag_formulario.unmount(true)
      e.preventDefault()
    }

    tag_formulario.mandarlosnuevosdatos = () => {
        tag_formulario.contenedorinputs = tag_formulario.refs.contenedordinamico
        let objetofinal = {nickname:null, proyecto:null, intereses:null}
        for (var i = 0; i < tag_formulario.contenedorinputs.children.length; i++) {
          let buscar = 'inputdesignado' + tag_formulario.contenedorinputs.children[i].children[0].children[1].name
          objetofinal[tag_formulario.arraikeys[i]] = tag_formulario.refs[buscar].value
        }

        tag_formulario.root.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.intereses[opts.index] = objetofinal

        riot.update()

        tag_formulario.unmount(true)


    }
  </script>
</formulariointereses>
<formulariolanguages>

  <div ref="contenedordinamico" class="contenedordinamicodeinputs">
    <div each={i in arraikeys} class={ 'inputclass' + i } >
      <label>
        <div>{ i } :</div>
        <textarea type="text" name={ i } ref={ 'inputdesignado' + i } placeholder={ opts.info[i] } value={ opts.info[i] }></textarea>
      </label>
    </div>
  </div>

  <button type="button" name="button" class="botonatrasform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ cerrarestecomponente }>
      <i class="material-icons">close</i>
  </button>
  <button type="button" name="button" class="botonguardarform mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab" onclick={ mandarlosnuevosdatos }>
    <i class="material-icons">add</i>
  </button>

  <h1></h1>
  <script type="text/javascript">

    const tag_formulario = this
    tag_formulario.arraikeys = Object.keys(opts.info)
    console.log(tag_formulario.arraikeys);

    tag_formulario.cerrarestecomponente = (e) => {
      tag_formulario.unmount(true)
      e.preventDefault()
    }

    tag_formulario.mandarlosnuevosdatos = () => {
        tag_formulario.contenedorinputs = tag_formulario.refs.contenedordinamico
        let objetofinal = {lenguaje:null,tiempo:null, hablado:null, redaccion:null, comprension:null, libros:null}
        for (var i = 0; i < tag_formulario.contenedorinputs.children.length; i++) {
          let buscar = 'inputdesignado' + tag_formulario.contenedorinputs.children[i].children[0].children[1].name
          objetofinal[tag_formulario.arraikeys[i]] = tag_formulario.refs[buscar].value
        }

        tag_formulario.root.parentElement.parentElement.parentElement.parentElement.parentElement._tag.opts.data.idiomas[opts.index] = objetofinal

        riot.update()

        tag_formulario.unmount(true)


    }
  </script>
</formulariolanguages>
