export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '^'
  plugin: ''
  test: []
  keep: [
    'cfx.example-umi-user-dashboard.Sdk'
    'cfx.example-umi-user-dashboard.View'
  ]
  dep: [
		'cfx.require-plugin-coffee'
		'cfx.rollup-plugin-coffee2'
    'antd'
    'cfx.react.dom'
    'cfx.redux.redux'
  ]
  devdep: [
    'cfx.simple-build-tool'
    'ddeyes'
    'umi'
  ]
  exclude: [
    './node_modules'
    './sources'
    './src'
    './dist'
    './.autod.conf.js'
  ]
