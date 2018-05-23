import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'

import MainLayout, { Header } from '../components/comps/MainLayout'

CFX = cfxify {
  'h1'
  Header: Header()
  MainLayout: MainLayout Header()
}

export default ->

  storiesOf 'MainLayout', module

  .add 'Header'
  , =>
    { c_Header } = CFX
    c_Header {}

  .add 'MainLayout'
  , =>
    {
      c_MainLayout
      c_h1
    } = CFX

    c_MainLayout {}
    ,
      c_h1 {}
      , 'Hello World!!!'
