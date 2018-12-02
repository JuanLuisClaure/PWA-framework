import '../theme/theme.css'

import '../theme/material.css'
import '../theme/material.js'
import '../theme/offline/offline.css'
import '../theme/offline/darktheme.css'
import '../theme/offline/indicator.css'
import '../theme/offline/lenguage.css'
import '../theme/offline/offline.js'
import '../theme/webslides/full.js'
import '../theme/webslides/slidecss.css'
import ScrollOut from 'scroll-out'





console.log(window.Offline)

window.Offline.options = {
    // Should we check the connection status immediatly on page load.
    checkOnLoad: false,
  
    // Should we monitor AJAX requests to help decide if we have a connection.
    interceptRequests: true,
  
    // Should we automatically retest periodically when the connection is down (set to false to disable).
    reconnect: false,
  
    // Should we store and attempt to remake requests which fail while the connection is down.
    requests: true,
  
    // Should we show a snake game while the connection is down to keep the user entertained?
    // It's not included in the normal build, you should bring in js/snake.js in addition to
    // offline.min.js.
    game: false
  }


// import '../theme/full.js'
// import '../theme/slidecss.css'
