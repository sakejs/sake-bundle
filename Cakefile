require 'shortcake'

use 'cake-outdated'
use 'cake-publish'
use 'cake-version'
use 'cake-yarn'

task 'build', 'build project', ->
  handroll = require 'handroll'

  handroll.write
    entry:    'src/index.coffee'
    compilers:
      coffee: version: 1

task 'clean', 'clean project', ->
  exec 'rm -rf dist'
