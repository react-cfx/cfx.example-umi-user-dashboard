### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'

CFX = cfxify {
  'div'
}

export default =>

  { c_div } = CFX

  c_div {}
  , '404 page'
