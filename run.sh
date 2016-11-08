#!/bin/sh

echo '1 - touch and run -> ReferenceError'
touch test.js
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '2 - run again -> fail as expected'
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '3 - run once more -> fail as expected'
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '4 - touch again and run -> ReferenceError'
touch test.js
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '5 - touch once more and run -> ReferenceError'
touch test.js
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '6 - run again -> fail as expected'
$(npm bin)/mocha --reporter dot --require babel-register test.js
