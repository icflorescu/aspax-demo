express = require 'express'
path    = require 'path'

app = express()
require('aspax-express') app, path.join __dirname, 'aspax.json'

app.locals._     = require 'underscore'
app.locals._s    = require 'underscore.string'

app.locals.allPages = [
  'home', 'about', 'contact'
  'page-four', 'page-number-six', 'seventh-page'
  'page-eight', 'page-nine', 'the-last-page'
]

app.use express.favicon()

if app.get('env') is 'production'
  app.use express.logger 'short'
  app.use express.static path.join(__dirname, 'public'),
    maxAge: 31536000000 # Cache for 1 year
else
  app.use express.logger 'dev'
  app.use express.static path.join __dirname, 'public'

app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'jade'

app.use express.json()
app.use express.urlencoded()
app.use express.methodOverride()
app.use express.errorHandler()

app.use app.router
app.get '/:page?', (req, res) ->
  res.render 'index',
    currentPage: req.params.page or app.locals.allPages[0]

app.listen 3000, -> console.log 'Application started.'
