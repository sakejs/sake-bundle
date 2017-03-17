require 'shortcake'

use 'cake-publish'
use 'cake-version'

task 'bootstrap', 'build project', ->
  handroll = require 'handroll'

  bundle = yield handroll.bundle
    entry:    'src/index.coffee'
    external: true

  yield bundle.write format: 'cjs'
  yield bundle.write format: 'es'

task 'build', 'build project', ->
  do require './'

  bundle.write
    entry:     'src/index.coffee'
    external:  true
    formats: ['cjs', 'es']

task 'clean', 'clean project', ->
  exec 'rm -rf dist'
