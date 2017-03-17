handroll = require 'handroll'
path     = require 'path'

autoOpts = (opts = {}) ->
  pkg = require path.join process.cwd(), './package.json'

  formats = []

  if pkg.browser?
    opts.external ?= false
    formats.push 'web'
  else
    opts.external ?= true

  if pkg.main?
    formats.push 'cjs'

  if pkg.module?
    formats.push 'es'

  if !opts.format? or !opts.formats?
    opts.formats = formats

  opts

bundle = (opts) ->
  handroll.bundle autoOpts opts

bundle.write = (opts) ->
  handroll.write autoOpts opts

export default (opts = {}) ->
  global.bundle = bundle

  if opts.entry?
    task 'bundle', 'bundle javascript', ->
      bundle.write opts
