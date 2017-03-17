# cake-handroll [![NPM version][npm-img]][npm-url] [![Build Status][travis-img]][travis-url] [![Coverage Status][coveralls-img]][coveralls-url] [![Dependency Status][dependency-img]][dependency-url] [![Gitter chat][gitter-img]][gitter-url]

[![Greenkeeper badge](https://badges.greenkeeper.io/zeekay/cake-bundle.svg)](https://greenkeeper.io/)
Adds `handroll` helper to shortcake. Bundle up your JavaScript apps using
[handroll](https://github.com/zeekay/handroll).

## Install
```bash
$ npm install cake-bundle --save-dev
```

## Usage
```coffee
require 'shortcake'

use 'cake-bundle'

task 'build',         'build project', ['build:lib', 'build:browser']

task 'build:lib',     'build project as library for bundlers + node', ->
  bundled = await bundle
    entry:    'src/index.coffee'
    external: true

  bundled.write
    format: 'es'
  bundled.write
    format: 'cjs'

task 'build:browser', 'build project as single-minified js file'
  bundle
    entry:  'src/browser.coffee'
    dest:   'project.min.js'
    format: 'browser'
    minify: true

```

[travis-img]:     https://img.shields.io/travis/zeekay/cake-bundle.svg
[travis-url]:     https://travis-ci.org/zeekay/cake-bundle
[coveralls-img]:  https://coveralls.io/repos/zeekay/cake-bundle/badge.svg?branch=master&service=github
[coveralls-url]:  https://coveralls.io/github/zeekay/cake-bundle?branch=master
[dependency-url]: https://david-dm.org/zeekay/cake-bundle
[dependency-img]: https://david-dm.org/zeekay/cake-bundle.svg
[npm-img]:        https://img.shields.io/npm/v/cake-bundle.svg
[npm-url]:        https://www.npmjs.com/package/cake-bundle
[gitter-img]:     https://badges.gitter.im/join-chat.svg
[gitter-url]:     https://gitter.im/zeekay/hi

<!-- not used -->
[downloads-img]:     https://img.shields.io/npm/dm/cake-bundle.svg
[downloads-url]:     http://badge.fury.io/js/cake-bundle
[devdependency-img]: https://david-dm.org/zeekay/cake-bundle/dev-status.svg
[devdependency-url]: https://david-dm.org/zeekay/cake-bundle#info=devDependencies
