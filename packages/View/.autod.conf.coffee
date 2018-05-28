export default
  write: true
  registry: 'https://registry.npm.taobao.org'
  prefix: '^'
  plugin: ''
  test: []
  dep: [
    'antd'
    'cfx.react.dom'
    'cfx.react.link'
    'cfx.react.style'
    'cfx.require-plugin-coffee'
    'cfx.rollup-plugin-coffee2'
    'cfx.simple-build-tool'
    'normalize.css'
    'react'
    'react-dom'
    'reset-css'
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
    'ddeyes'
    'umi'
    'babel-core'
    '@storybook/addon-info'
    '@storybook/addon-options'
    '@storybook/react'
  ]
  exclude: [
    './node_modules'
    './sources'
    './src'
    './dist'
    './.autod.conf.js'
  ]
