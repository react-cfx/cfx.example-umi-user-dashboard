export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '~'
  devprefix: '^'
  plugin: ''
  test: []
  dep: [
    'cfx.redux.redux'
    'cfx.redux.sagas'
    'cfx.rollup-plugin-coffee2'
    'cfx.require-plugin-coffee'
    'cfx.simple-build-tool'
    'cfx.service'
    'del'
    'gulp'
    'gulp-better-rollup'
    'gulp-rename'
    'gulp-sequence'
    'react-particles-js'
    'rollup'
    'rollup-plugin-cleanup'
    'rollup-plugin-image'
    'rollup-plugin-re'
  ]
  devdep: [
    'async-to-gen'
    'ddeyes'
    'shelljs'
  ]
  exclude: [
    './node_modules'
    './src'
    './dist'
    './.autod.conf.js'
  ]
