### eslint-disable import/first ###
# import { ddbs as dd } from 'ddeyes'

import cfxify from 'cfx.react.dom'
import { MainLayout } from '../deps/Page'

import {
  app
  Provider
} from '../store'
{ store } = app
import withRouter from 'umi/withRouter'

import 'antd/dist/antd.css'

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from './Link'

CFX = cfxify {
  Provider
  MainLayout
}

export default withRouter ({
  location
  children
}) =>
  {
    c_Provider
    c_MainLayout
  } = CFX
  console.log location
  console.log children
  c_Provider {
    store
  }
  ,
    c_MainLayout {
      location
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof
    }
    , children
