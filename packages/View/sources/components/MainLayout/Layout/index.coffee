import nb from './style'
import cfxify from 'cfx.dom'

CFX = cfxify {
  'div'
}

MainLayout = (Header) => ({
  location
  children
}) ->

  CFX = CFX._.extends {
    Header
  }

  {
    c_div
    c_Header
  } = CFX

  c_div {
    ( nb 'normal' )...
  }
  ,
    c_Header {
      location
    }
    c_div {
      ( nb 'content' )...
    }
    ,
      c_div {
        ( nb 'main' )...
      }
      , children

export default MainLayout
