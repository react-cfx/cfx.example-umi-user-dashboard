import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.react.dom'

import MainLayout, { Header } from '../../components/comps/MainLayout'
import Link from './Link'

import {
  Home as HomePage
  Users as UsersPage
} from '../../components/pages'

CFX = cfxify {
  HomePage
  UsersPage
  Header: Header Link
  MainLayout: MainLayout Header Link
}

export default ->

  storiesOf 'Pages', module

  .add 'Home'
  , =>

    {
      c_MainLayout
      c_HomePage
    } = CFX

    c_MainLayout {}
    ,
      c_HomePage {}

  .add 'Users'
  , =>

    {
      c_MainLayout
      c_UsersPage
    } = CFX

    c_MainLayout {}
    ,
      c_UsersPage {}
