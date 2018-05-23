### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'
import Link from 'umi/link'

CFX = cfxify {
  Link
}

HocLinkTo = (linkWhere) =>
  ({
    children
  }) =>

    { c_Link } = CFX

    c_Link
      to: linkWhere
    , children

Users = HocLinkTo '/users'
Index = HocLinkTo '/'
Fof = HocLinkTo '/404'

export {
  Users
  Index 
  Fof
}
