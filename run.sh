#!/bin/sh

echo '1 - touch and run -> causes ReferenceError under Node v0.12 only'
touch test.js
$(npm bin)/mocha --reporter dot --require babel-register test.js
echo '2 - run again -> fails as expected'
$(npm bin)/mocha --reporter dot --require babel-register test.js
