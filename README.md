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

        # pack for production (will compile, concat, minify and fingerprint)
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

## Automation
It's always a good idea to put the above commands in shell scripts (see [watch-assets](https://github.com/icflorescu/aspax-demo/blob/master/watch-assets), [pack-assets](https://github.com/icflorescu/aspax-demo/blob/master/pack-assets), [start-dev](https://github.com/icflorescu/aspax-demo/blob/master/start-dev) and [start-prod](https://github.com/icflorescu/aspax-demo/blob/master/start-prod)).

## Endorsing the author
If you find this piece of software useful, please [tweet about ASPAX](http://twitter.com/share?text=Checkout%20ASPAX%2C%20the%20simple%20Node.js%20asset%20packager!&url=http%3A%2F%2Faspax.github.io&hashtags=aspax&via=icflorescu) and endorse me on LinkedIn:

[![Ionut-Cristian Florescu on LinkedIn](https://static.licdn.com/scds/common/u/img/webpromo/btn_viewmy_160x25.png)](https://www.linkedin.com/in/icflorescu)
