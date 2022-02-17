var express = require('express')
const bodyParser = require('body-parser')

var cors = require('cors')

app = express()


app.use(bodyParser.urlencoded({
    parameterLimit: 10000,
    limit: '10mb',
    extended: true
}))
app.use(bodyParser.json({limit: '10mb'}))
app.use(cors())

port = process.env.PORT || 3002  
app.listen(port)  


var routes = require(__dirname + '/app/routes/route.js')

routes(app)
