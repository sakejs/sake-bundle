import handroll from 'handroll'
import path     from 'path'

bundle = (opts) ->
  handroll.bundle opts

bundle.write = (opts) ->
  handroll.write opts

export default (opts = {}) ->
  unless opts.global == false
    global.bundle = bundle
    global.Bundle = handroll.Bundle

  if opts.entry?
    task 'bundle', 'bundle javascript', ->
      bundle.write opts
