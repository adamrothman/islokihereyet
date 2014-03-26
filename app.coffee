coffeescript = require('connect-coffee-script')
express = require('express')

app = express()

app.configure ->
  app.use coffeescript({
    src: __dirname + '/public/scripts'
    bare: true
    compress: true
  })

  app.use express.static(__dirname + '/public')

app.listen Number(process.env.PORT || 1337)
