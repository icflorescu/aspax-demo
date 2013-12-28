cd ./server

aspax -s ../client pack

echo "Done packaging; starting application in production mode..."

NODE_ENV=production node start.js

cd ..
