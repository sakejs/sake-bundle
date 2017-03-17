handroll = require 'handroll'
path     = require 'path'

bundle = (opts) ->
  handroll.bundle opts

bundle.write = (opts) ->
  handroll.write opts

export default (opts = {}) ->
  global.bundle = bundle

  if opts.entry?
    task 'bundle', 'bundle javascript', ->
      bundle.write opts
