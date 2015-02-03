express      = require 'express'
logger       = require 'morgan'
compression  = require 'compression'
bodyParser   = require 'body-parser'
path         = require 'path'

mode = process.env.NODE_ENV
app  = express()

app.use logger if mode is 'production' then 'short' else 'dev'

app.use express.static path.join __dirname, '/public'

app.use compression()
app.use bodyParser.json()
app.use bodyParser.urlencoded extended: yes

app.locals._ = require 'underscore'
app.locals.s = require 'underscore.string'

app.locals.allPages = [
  'home', 'about', 'contact'
  'page-four', 'page-number-six', 'seventh-page'
  'page-eight', 'page-nine', 'the-last-page'
]

require('aspax-express') app, path.join __dirname, 'aspax.json'

app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'jade'

app.get '/:page?', (req, res) -> res.render 'index',
  currentPage: req.params.page or app.locals.allPages[0]

app.listen 3000, -> console.log 'Application listening on port 3000...'
