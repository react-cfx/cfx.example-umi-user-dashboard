import { prefixDom } from 'cfx.dom'
import Header from '../pagelibs/header'
import { Pages } from '../pagelibs/deps/View'
{ Home } = Pages

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from '../pagelibs/HeaderLink'

CFX = prefixDom {
  'div'
  Header
  Home
}

export default =>

  {
    c_div
    c_Header
    c_Home
  } = CFX

  c_div {}
  ,
    c_Header {}
    c_Home
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof
