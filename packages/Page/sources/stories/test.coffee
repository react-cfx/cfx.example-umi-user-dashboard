import { storiesOf } from '@storybook/react'
import MainLayout from '../pages/MainLayout'

import cfxify from 'cfx.react.dom'

CFX = cfxify {
  MainLayout
}

export default ->

  storiesOf 'MainLayout', module

  .add 'MainLayout'

  , =>

    {
      c_MainLayout
    } = CFX

    c_MainLayout {}
