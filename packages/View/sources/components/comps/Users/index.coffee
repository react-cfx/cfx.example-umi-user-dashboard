import { Pagination, Button } from 'antd'

import UsersTable from './Table'
import UserModal, {
  UserForm
} from './Modal'

import cfxify from 'cfx.react.dom'

import nb from './style'

CFX = cfxify {
  'div'

  Pagination
  Button
  UserModal
  UsersTable
}

export default ({
  list
  total
  current
  pageSize = 3
}) =>

  {
    c_div
    c_Pagination
    c_Button
    c_UserModal
    c_UsersTable
  } =  CFX

  c_div {
    ( nb 'normal' )...
  }
  ,
    c_div {}
    ,
      c_div {
        ( nb 'create' )...
      }
      ,
        c_UserModal
          record: {}
        ,
          c_Button
            type: 'primary'
          , 'Create User'
      c_UsersTable {
        list 
      }
      c_Pagination {
        className: 'ant-table-pagination'
        total
        current
        pageSize
      }

export {
  UserForm
  UsersTable
  UserModal
}
