import dd from 'ddeyes'
import cfxify from 'cfx.react.dom'

import { Pages } from 'cfx.example-umi-user-dashboard.View'
{
  Users
} = Pages

import UsersComp from '../Pages/Users'
CFX = cfxify {
  Users
  UsersComp
}

export default ({
  HeaderLink
}) =>

  { c_Users } = CFX

  c_Users {
    Users: UsersComp
    # HeaderLink
  }
