import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import app from '../pagelibs/deps/Sdk'
import Head from '../pagelibs/header'

import { Pages } from '../pagelibs/deps/View'
{
  Users
} = Pages

import UsersComp from '../pagelibs/pages/Users'

import { withReduxSaga } from '../pagelibs/store'

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from '../pagelibs/HeaderLink'

CFX = prefixDom {
  Users
}

UsersPage = ({
  HeaderLink
}) =>
  { c_Users } = CFX
  c_Users {
    Users: UsersComp
    HeaderLink
  }

CFX = {
  CFX...
  (
    prefixDom {
      'div'
      Head
      UsersPage
    }
  )...
}

Component = =>

  {
    c_div
    c_Head
    c_UsersPage
  } = CFX

  c_div {}
  ,
    c_Head {}
    c_UsersPage
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof 

Component.getInitialProps = ({
  store
}) =>
  dd store: store.getState()  

export default withReduxSaga Component
