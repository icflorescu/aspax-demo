## What's this?
A dummy Express.js application to demonstrate the usage of [ASPAX](http://aspax.github.io) - the simple Node.js asset packager.

## Usage

1. Install ASPAX globally, if you don't already have it:

        npm install aspax -g

2. Clone this repo and go to the `server` folder:

        git clone https://github.com/icflorescu/aspax-demo.git
        cd aspax-demo/server

3. Install the necessary application modules

        npm install

4. Do the ASPAX magic:

        # watch and build on-the-fly during development
        aspax -s ../client watch

        # build for development
        aspax -s ../client build

        # pack for production (will compile, concat, minify, compress and fingerprint)
        aspax -s ../client pack

        # clean everything
        aspax -s ../client clean

5. Run the demo in **development** or **production** mode to see it in action:

        # development
        #
        NODE_ENV=development node start.js
        # ...or
        NODE_ENV=development nodemon -e js,json,coffee -x node

        # production
        #
        NODE_ENV=production node start.js

## Endorsing the author
If you find this piece of software useful, please [![endorse](https://api.coderwall.com/icflorescu/endorsecount.png)](https://coderwall.com/icflorescu) me on Coderwall!
