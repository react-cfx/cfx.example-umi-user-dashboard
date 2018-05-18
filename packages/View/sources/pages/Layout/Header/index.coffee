### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'

import { Header } from '../../../components/comps/MainLayout'

CFX = cfxify {
  Header: Header()
}

export default =>

  { c_Header } = CFX

  c_Header {}
