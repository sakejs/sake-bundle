exec = require 'executive'

describe 'cake-bundle', ->
  it 'should add linked commands', ->
    {stdout} = yield exec 'cake', cwd: __dirname
    stdout.should.contain 'bundle'
