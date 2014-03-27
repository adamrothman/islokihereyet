express = require('express')

app = express()

app.configure ->
  app.use express.static(__dirname + '/public')

app.listen Number(process.env.PORT || 1337)
