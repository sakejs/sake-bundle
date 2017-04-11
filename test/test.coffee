exec = require 'executive'

describe 'sake-bundle', ->
  it 'should add linked commands', ->
    {stdout} = yield exec 'sake', cwd: __dirname
    stdout.should.contain 'bundle'
