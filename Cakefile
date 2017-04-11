use 'sake-outdated'
use 'sake-publish'
use 'sake-test'
use 'sake-version'

# use 'sake-yarn'

task 'build', 'build project', ->
  handroll = require 'handroll'

  handroll.write
    entry:    'src/index.coffee'
    compilers:
      coffee: version: 1

task 'clean', 'clean project', ->
  exec 'rm -rf lib'
