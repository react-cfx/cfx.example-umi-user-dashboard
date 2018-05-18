import cfxify from 'cfx.react.dom'
import nb from './style'
import Users from '../../components/Users'

CFX = cfxify {
  'div'
  Users
}

export default ({
  list
  total
  current
  pageSize = 3
}) =>

  {
    c_div
    c_Users
  } = CFX

  c_div {
    ( nb 'normal' )...
  }
  ,
    c_Users {
      list
      total
      current
      pageSize
    }
