Object.defineProperty(exports, "__esModule", {
  value: true
});
const paths = exports.paths = {

  //nombre dl projecto
  name: 'PWA-framework',
  //  servidor
  srv: './src/server/**/*.js',

  //  cliente
  clnt: './src/client/**/*.js',

  //  redireccion a la entrada de webpack2
  entry: 'entry.js',

  //  lint para arhivos especificos
  gulpFile: 'gulpfile.babel.js',
  webpackC: 'webpack.config.babel.js',


  //  carpertas de distribucion
  srvrDir: './www/server/',
  clntDir: './www/client/',



  pgnsTag: './pwa/paginas/**/*.tag',
  cmpntsTag: './pwa/componentes/**/*.tag',

  pgnsDir: './src/client/paginas/',
  cmpntsDir: './src/client/componentes/',


  themeScss: './pwa/theme/theme.scss',
  themeCss:'./src/client/theme/',


  favicon:'./pwa/favicon.ico',
  manifest:'./pwa/manifest.json',
  homescreen: './pwa/homescreen.png',


  config:'./src/config.paths.js',


  asyncdatasrv:'./src/server/asyncdata/*.json',
  asyncdatawww:'./www/server/asyncdata/',

  assetsImg: './src/assets/img/**/**',
  assetsfont: './src/assets/fonts/**/**',
  template: './src/server/templates/*.html',
  cmpntsCopy: './src/server/components/**',
  cmpntsSrvr: './src/server/components/*.tag',



  imgDir: './www/client/assets/img/',
  fontDir: './www/client/assets/fonts/',
  tmpltDir: './www/server/templates/',
  cmpntsServerDir: './www/server/components/',


  srcutil: './src/server/util/*.js',
  wwwutil:  './www/server/util/',
  srcStart: './src/*.js',
  wwwStart: './www/',

  initFile:'./www/index.js',


  port:8888,

  pathFE:'./pwa/**/**',
  pathBE:'./src/**/**',


  firebaseApp:{
    "type": "service_account",
    "project_id": "pwa-frmwrk",
    "private_key_id": "66e15bd642c4e1519d7456e02dedca48fbeaf4c4",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEuwIBADANBgkqhkiG9w0BAQEFAASCBKUwggShAgEAAoIBAQCaqKdAemk3EnNn\nrsIk+6zfgB2mL+0ntB8sfk5fSbM1Az17U9t48YLkmdmpbJFjpFPIUAp4Xu5aXCLn\n9LYabsOboK8eVdPx+t+af8q4vvH9nvVp6Y/7DKMkg9SjIM4x7YcbjRgWbl5GZSrG\nNZFn9j3RTOCDKEGka1ps/a0WTbGMKRGMB5lTDtavq+MLsJ4RF2evPeoh2gYodVd/\njc/4F8BilKpCsF6HucAGBG2k3iYBrZArHYbzczD8mo7tt6Ry9tIK8xSZNMZoSMcz\nY5vIbmLDPlDNF3BEM5AHN+WAkcsgE9LuCU7H5uf9+2lv/u95QG4bfqJvvQg1pH2H\nF3zAf233AgMBAAECgf8pr0tlFZlGPrLcPz4UucDefKmBIWnKScIdO+3jwPmMUFNB\n6lg9QNsGwnDoOVr2gFQUqX4o821K7Yp6+noapcATMjwA8SEvF28tNURuhwiyUyXS\nZiFoiP9v2Bh331+0FVFVG7JiWV0PnDTrN4T5gGUpBI9+ylrm9ghpV/ZPDKHOJNgV\n+KTIz4WaHkZ9oIAbPffDBKVs2IVrCbYeK4k9z5zbmAzX+BcITDrUpZzMMwi/UmQ8\nyJsFNkkCzDofSt4hi82/sQjOW8Bs7ts9Dz4T7fp+pUuV/3VcA459EOlvE7k/4jYM\nJqEdtLpMcqlPEaFK2OvjL9/pGipnIgPXSufBrVkCgYEA1Kuz9XcswfRTfyVBP4YT\n/4C6xFbFfS10S0OoWMuzws/vDmM+RY6RADoXFa4V+evDBncmmevJS81ozjBZGsd2\nxf98wdZme9m8MSLqvUmJL9tzdWD1+9NmyNLnLNEO/iA2LU6LajNe235rIN8O3nxA\n19YE1PS4sU9VtlRDTK+U/UMCgYEAuis29mN5D32boLaQyyBf4poolym3+wQPaGjb\nnnVORUtjKvHsx1gvMlWo6rhoVRhOMktuO6uWNfrxzCq/CfQq9LCUzw9C8lClguCN\nWGu0wgbeL+V6VW8MKYOg2+6f5cJAHJpwQFfszWimsVpJViQJ7JayVmTXiPfAPgUq\ndmBgxz0CgYATrLreV6MlYmQjHCA4L0BEX/VnWpu0o/LhT6YQaO/9ct0r2JSXPMQ/\nYCBomg1gbKZDP9yrWrvprlwmzyQ/LPrZAHTbPemHRbJ6XT+YOWherA+3aTv4iys0\nIwbOB506d2JruJt/PLdm2QAyL1Ch1p7tGNijluxLQwqr7om3W3sOHwKBgHKAacmY\n3Lh+VN2/68ZDHzZMAnMWoaWtlZxuAcWv+Hf+Kfwb17mzrzOSI9ZZnTHZRR8B7cad\nfkGtGlKsZ9tDZbghcyT3CgHnQCUC32xmskIz3ywuQ9OP/Tb7UlByr72sf6oYArpQ\nWcDsgLnMAhcNC12MQhuI4lfHqWF74+Xy2RMxAoGBAI1hs0IpIxt8a7g9dUBvIBuH\nkvJ9/E2vBc1QIcQ+axDPkLKa8M0nyXz+PBPphUHtuOzU1J2RgNqGTKJ6p7KD6yyV\nz7N9xCk7MGt4WtXJ5Ug+3hJWEDvGVxvtP/hwYCc0n07J5By2mgs8Uc8kGEHhT3O1\n6jm3ib0BGS1/wBEAB/Wo\n-----END PRIVATE KEY-----\n",
    "client_email": "firebase-adminsdk-mm93t@pwa-frmwrk.iam.gserviceaccount.com",
    "client_id": "103623383276307628956",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-mm93t%40pwa-frmwrk.iam.gserviceaccount.com"
  }


};
