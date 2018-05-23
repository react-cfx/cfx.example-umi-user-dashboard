import cfxify from 'cfx.react.dom'
import Users from '../../pages'

CFX = cfxify {
  Users
}

export default =>

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
