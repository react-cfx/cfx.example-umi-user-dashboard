import { storiesOf } from '@storybook/react'
import cfxify from 'cfx.dom'
import { Button } from 'antd'

import Users, {
  UserForm 
  UserModal 
  UsersTable
} from '../components/Users'

CFX = cfxify {
  Button

  UserForm
  UserModal
  UsersTable
  Users
}

export default ->

  storiesOf 'Users', module

  .add 'UserForm'
  , =>

    { c_UserForm } = CFX
    c_UserForm
      record:
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'

  .add 'UserModal'
  , =>

    {
      c_Button
      c_UserModal
    } = CFX

    c_UserModal
      record:
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
    ,
      c_Button {}
      , 'User Modal'

  .add 'UsersTable'
  , =>

    { c_UsersTable } = CFX
    c_UsersTable
      list: [
        id: 1
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
      ]

  .add 'Users'
  , =>

    { c_Users } = CFX
    c_Users
      list: [
        id: 1
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
      ]
      total: 10
      current: 1
      pageSize: 3
