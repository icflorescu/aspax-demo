express = require 'express'
path    = require 'path'

mode = process.env.NODE_ENV
app  = express()

app.locals._  = require 'underscore'
app.locals._s = require 'underscore.string'

app.locals.allPages = [
  'home', 'about', 'contact'
  'page-four', 'page-number-six', 'seventh-page'
  'page-eight', 'page-nine', 'the-last-page'
]

app.use express.favicon()
app.use express.logger if mode is 'production' then 'short' else 'dev'

app.use express.json()
app.use express.urlencoded()
app.use express.methodOverride()
app.use express.errorHandler()

require('aspax-express') app, path.join __dirname, 'aspax.json'

app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'jade'

app.use app.router
app.get '/:page?', (req, res) ->
  res.render 'index',
    currentPage: req.params.page or app.locals.allPages[0]

if mode is 'production'
  app.use require('st')
    path: 'public'
    index: no
    cache:
      maxAge: 31536000000 # Cache for 1 year
else
  app.use require('st')
    path: 'public'
    cache: no

app.listen 3000, -> console.log 'Application started.'
