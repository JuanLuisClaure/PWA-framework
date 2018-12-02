import route from 'riot-route'
import riot  from 'riot'

let renderHere = document.querySelector('#inicio')


const OptsMixins = {
  init: function() {
    this.on('updated', function() {
      componentHandler.upgradeDom();
      // console.log('se update los componentes');
    })
  },

}

route('/', () => {
  System.import('../paginas/welcome/welcome').then( (module) => {
    renderHere.innerHTML='<welcome></welcome>'
    riot.mixin(OptsMixins)
    riot.mount('*')
  }).catch( (err) => {
    console.log(err);
  })
})



route.stop()
route.start(true)
