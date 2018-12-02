<panel-buzon>
  <div class="colorbuzon">
  <div class="container-uno" data-simplebar>


  <!-- Square card -->
            <style>

            .demo-card-square.mdl-card {
              width: auto;
              height: auto;

            }
            .demo-card-square > .mdl-card__title {
              color: #fff;
              background:#46B6AC;
            }
            .mdl-badge[data-badge]::after {
                    content: attr(data-badge);
                    display: -webkit-flex;
                    display: -ms-flexbox;
                    display: flex;
                    -webkit-flex-direction: row;
                    -ms-flex-direction: row;
                    flex-direction: row;
                    -webkit-flex-wrap: wrap;
                    -ms-flex-wrap: wrap;
                    flex-wrap: wrap;
                    -webkit-justify-content: center;
                    -ms-flex-pack: center;
                    justify-content: center;
                    -webkit-align-content: center;
                    -ms-flex-line-pack: center;
                    align-content: center;
                    -webkit-align-items: center;
                    -ms-flex-align: center;
                    align-items: center;
                    position: absolute;
                    top: -1px;
                    right: -13px;
                    font-family: "Roboto", "Helvetica", "Arial", sans-serif;
                    font-weight: 600;
                    font-size: 11px;
                    width: 12px;
                    height: 12px;
                    border-radius: 50%;
                    background: rgb(255,64,129);
                    color: rgb(255,255,255);
                }
            </style>
<ul>
  <li each={ clientes, i in cajonclientes} style="margin: 3em 3em;list-style:none;">
    <div class="mdl-card mdl-shadow--2dp">
      <div class="mdl-card__title mdl-card--expand" style="padding: 1px 17px">
        <img src={ clientes[1].info.avatar } alt="" >

        <h2 class="mdl-list__item mdl-list__item--three-line">
          <span class="mdl-list__item-primary-content">

                      <span>{ clientes[1].info.nombre }</span>
             <span class="mdl-list__item-text-body" style="font-size:11px;">
               <u><b>{ clientes[1].info.city }     |{ clientes[1].info.country_flag_emoji }</b><br></u>
                <u>   |{ clientes[1].info.continent_name }<b></b></u>    <b>{ clientes[1].info.country_flag_emoji_native }</b><br>
                <u> |{clientes[1].info.codigocel} - {(clientes[1].info.whatsapp==='')?'11 111 111':clientes[1].info.whatsapp}<b>|</b></u><br>

             </span>
           </span>
           <span class="mdl-list__item-secondary-content" style="font-size:9px;display:grid;grid-template-rows:28px 21px 21px;text-align: end;">


             <div style="font-size: 19px;" class="material-icons mdl-badge mdl-badge--overlap" data-badge={ clientes[1].botc.length + clientes[1].mnsj.length }>forum</div>
             <div style="font-size: 19px;" class="material-icons mdl-badge mdl-badge--overlap" data-badge={ clientes[1].qrcode.length }>add_shopping_cart</div>
             <div style="font-size: 19px;" class="material-icons mdl-badge mdl-badge--overlap" data-badge={ clientes[1].version }>history</div>


           </span>
        </h2>
        </div>
      <div class="mdl-card__actions mdl-card--border" style="display: grid;grid-template-columns: 17vw 5vw;grid-template-rows: 3vh;">
        <span style="font-size:9px;">{ clientes[1].info.tiempoEntrada }</span>
        <span style="font-size:9px;"> { clientes[1].info.asn }</span>
      </div>
      <div class="mdl-card__menu">
        <button data-cedula={ i } onclick={ abrirChat } class="mdl-button mdl-js-button mdl-button--raised" style="height:auto;line-height:0px;background-color: #98cc58;color:white;font-weight:900;">
          ...
          <i class="material-icons" style="font-size: 17px;color:white;">edit</i>
        </button>
      </div>
    </div>
  </li>
</ul>

  </div>

  <div class="container-dos" if={ !sondos }>
    <div id="renderHerecartacliente"></div>
  </div>

  </div>

  <script type="text/javascript">
    const tag_buzon = this

    const clienteskey = Object.keys(tag_buzon.opts.data)


    tag_buzon.sondos = false
    tag_buzon.cajonclientes = []
    tag_buzon.on('mount',()=>{



      for (var i = 0; i < clienteskey.length; i++) {
        tag_buzon.cajonclientes.push(tag_buzon.opts.data[clienteskey[i]])
        tag_buzon.cajonclientes = tag_buzon.cajonclientes.reverse()
      }

      tag_buzon.update()
    })


    tag_buzon.abrirChat = (w) => {

        console.log(tag_buzon.cajonclientes);
        let keyusuario = w.target.attributes['data-cedula'].value
        let renderHerecartacliente = document.querySelector('#renderHerecartacliente')
        if(riot.update()[1]!==undefined){
          riot.update()[1].unmount(true)
        }
        renderHerecartacliente.innerHTML='<cartaconchatpercliente></cartaconchatpercliente>'

        riot.mount('cartaconchatpercliente', {room:tag_buzon.cajonclientes[keyusuario][0], info:tag_buzon.cajonclientes[keyusuario][1]})


      }

      tag_buzon.on('updated',()=>{
        // window.sockete.emit('preguntar')
      })
  </script>

</panel-buzon>
<cartaconchatpercliente>
  <style media="screen">
    .cartauser{
      display:grid;
      padding: 1em 1em;
      width:auto;
      grid-template-columns:1fr;
      grid-template-rows:11vh 3vh  60vh 21vh;
      grid-template-areas:
      "header"
      "eventos"
      "body"
      'textar';
    }
  </style>
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
  <div class="cartauser mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title mdl-shadow--8dp" style="grid-area:header;">
    JuanLuis
    <button type="button" name="button" onclick={ cambiarlavista }>
      <i class="material-icons" style="font-size: 17px;color:white;">plus</i>
    </button>
    </div>
    <div class="mdl-card__media mdl-shadow--8dp" style="grid-area:eventos;">
    ...
    </div>
    <div if={ !chatoinfo } class="mdl-card__supporting-text " style="background-color:snow;grid-area:body;width:auto;">
      <ul ref="realtimechat" class="messages">

      </ul>
    </div>
    <div if={   chatoinfo } class="mdl-card__supporting-text" style="background-color:snow ;grid-area:body;width:auto;display:grid;grid-template-columns:1fr 1fr 1fr;">
      <span>{ this.opts.info.info.nombre }</span>
      <span>{ this.opts.info.info.city }</span>
      <span>{ this.opts.info.info.codigocel }</span>
      <span>{ this.opts.info.info.connection_type }</span>
      <span>{ this.opts.info.info.continent_name }</span>
      <span>{ this.opts.info.info.cookie }</span>
      <span>{ this.opts.info.info.country_capital }</span>
      <span>{ this.opts.info.info.country_code2 }</span>
      <span>{ this.opts.info.info.country_flag }</span>
      <span>{ this.opts.info.info.country_flag_emoji }</span>
      <span>{ this.opts.info.info.country_flag_emoji_native }</span>
      <span>{ this.opts.info.info.country_tld }</span>
      <span>{ this.opts.info.info.currency_code }</span>
      <span>{ this.opts.info.info.currency_name }</span>
      <span>{ this.opts.info.info.district }</span>
      <span>{ this.opts.info.info.downsp }</span>
      <span>{ this.opts.info.info.genero}</span>
      <span>{ this.opts.info.info.ipAddress }</span>
      <span>{ this.opts.info.info.languages }</span>
      <span>{ this.opts.info.info.languages_default_code}</span>
      <span>{ this.opts.info.info.languages_default_name }</span>
      <span>{ this.opts.info.info.org }</span>
      <span>{ this.opts.info.info.state_prov }</span>
      <span>{ this.opts.info.info.tiempoEntrada }</span>
      <span>{ this.opts.info.info.time_zone_name }</span>
      <span>{ this.opts.info.info.urlEntrada }</span>
      <span>{ this.opts.info.info.whatsapp }</span>
      <span>{ this.opts.info.info.zipcode }</span>






    </div>

    <div class="mdl-card__actions  mdl-shadow--8dp" style="grid-area:textar;">
      <input ref="mensajenuevo" class="inputMessage" placeholder="Type here..." onkeypress={ analizarmensaje }/>

    </div>
  </div>






  <script type="text/javascript">
    const tag_carta = this
    tag_carta.infokey = this.opts.info
    tag_carta.chatoinfo =  false
    tag_carta.on('mount',()=>{
      for (var i = 0; i < tag_carta.infokey.mnsj.length; i++) {

        if (tag_carta.infokey.mnsj[i][0]==='vacio') {
          tag_carta.crearburbujaowner(tag_carta.infokey.mnsj[i][1])
        }
        if (tag_carta.infokey.mnsj[i][1]==='vacio') {
          tag_carta.crearburbujacliente(tag_carta.infokey.mnsj[i][0])
        }

      }

    })
    tag_carta.on('update',()=>{
      for (var i = 0; i < tag_carta.infokey.mnsj.length; i++) {

        if (tag_carta.infokey.mnsj[i][0]==='vacio') {
          tag_carta.crearburbujaowner(tag_carta.infokey.mnsj[i][1])
        }
        if (tag_carta.infokey.mnsj[i][1]==='vacio') {
          tag_carta.crearburbujacliente(tag_carta.infokey.mnsj[i][0])
        }

      }
    })

    tag_carta.crearburbujacliente = (contenido) => {
      let b = tag_carta.refs.realtimechat
      let d = document.createElement('li')
      let bp = document.createElement('span')
      d.style.listStyle = 'none'
      d.style.float = 'left'
      d.style.clear = 'both'
      d.style.borderRadius = '2px 11px 11px 11px'
      d.style.background = 'rgb(162, 165, 168)'
      d.style.padding = '.5em .5em'
      d.style.margin = '.5em .5em'
      d.style.boxShadow = '0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12)'
      bp.style.fontWeight = "800"
      bp.style.color = 'white'

      b.appendChild(d)
      d.appendChild(bp)
      let bpb = document.createTextNode(contenido);
      bp.appendChild(bpb)
    }
    tag_carta.crearburbujaowner = (contenido) =>{
      let b = tag_carta.refs.realtimechat
      let c = document.createElement('li')
      let cp = document.createElement('span')
      c.style.listStyle = 'none'
      c.style.float = 'right'
      c.style.clear = 'both'
      c.style.borderRadius = '11px 11px 2px 11px'
      c.style.background = '#0084ff'
      c.style.padding = '.5em .5em'
      c.style.margin = '.5em .5em'
      c.style.boxShadow = '0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12)'
      cp.style.fontWeight = "800"
      cp.style.color = 'white'
      b.appendChild(c)
      c.appendChild(cp)
      let cpc = document.createTextNode(contenido);
      cp.appendChild(cpc)
    }
    tag_carta.cambiarlavista = () => {
      tag_carta.chatoinfo =  !tag_carta.chatoinfo

    }
    tag_carta.analizarmensaje = (e) => {
      if (e.which == 13) {

        tag_carta.infokey.mnsj.push(['vacio','Hpña cp,p estas'])
        let mensaje = {
          contenido:tag_carta.infokey,
          room:tag_carta.opts.room
        }
          console.log(window.sockete);
        window.sockete.emit('owner:Send', mensaje)
      }
    }

  </script>
</cartaconchatpercliente>
