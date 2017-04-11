exec = require 'executive'

describe 'sake-bundle', ->
  it 'should add bundle command', ->
    {stdout} = yield exec 'sake', cwd: __dirname
    stdout.should.contain 'bundle'
