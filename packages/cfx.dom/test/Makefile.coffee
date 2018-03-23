import dd from 'ddeyes'
import 'shelljs/make'

import React, { isValidElement } from 'react'
import cfxify from '../src'
import createReactClass from 'create-react-class'

c_h1 = cfxify 'h1'

Greeting = createReactClass
  render: ->
    c_h1 {}
    ,
      "Hello, #{@props.name}"

CFX = cfxify {
  'div'
  'a'
}

target.all = =>

  dd Object.keys CFX

  CFX = CFX._.extends {
    Greeting
  }

  dd Object.keys CFX

  {
    c_div
    c_a
    c_Greeting
  } = CFX

  dd isValidElement c_Greeting {}, 'World!!!'
  dd isValidElement c_div {}
  dd isValidElement c_a {}
