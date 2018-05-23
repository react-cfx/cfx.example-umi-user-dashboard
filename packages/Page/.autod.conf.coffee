export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '^'
  plugin: ''
  test: []
  keep: [
    "cfx.example-umi-user-dashboard.Sdk"
    "cfx.example-umi-user-dashboard.View"
  ]
  dep: [
    "antd"
    "cfx.react.dom"
    "cfx.react.link"
    "cfx.react.style"
    "cfx.redux.redux"
    "cfx.require-plugin-coffee"
    "cfx.rollup-plugin-coffee2"
    "cfx.simple-build-tool"
    "del"
    "global"
    "gulp"
    "gulp-better-rollup"
    "gulp-rename"
    "gulp-sequence"
    "normalize.css"
    "react"
    "react-dom"
    "react-particles-js"
    "reset-css"
    "rollup"
    "rollup-plugin-cleanup"
    "rollup-plugin-image"
    "rollup-plugin-re"
  ]
  devdep: [
    "@storybook/addon-info"
    "@storybook/addon-options"
    "@storybook/react"
    "babel-core"
    "cfx.simple-build-tool"
    "ddeyes"
    "umi"
  ]
  exclude: [
    './node_modules'
    './sources'
    './src'
    './dist'
    './.autod.conf.js'
  ]
