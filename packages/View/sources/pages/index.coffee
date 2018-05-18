### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'

CFX = cfxify {
  'div'
  'h1'
  'h2'
  'ul'
  'li'
}

export default =>

  {
    c_div
    c_h1
    c_h2
    c_ul
    c_li
  } = CFX

  c_div {}
  ,
    c_div {}
    ,
      c_h1 {}
      , 'Layout'
      c_ul {}
      ,
        c_li {}
        ,
          c_h2 {}
          , 'LayoutHeader'
        c_li {}
        ,
          c_h2 {}
          , 'MainLayout'
    c_div {}
    ,
      c_h1 {}
      , 'Users'
      c_ul {}
      ,
        c_li {}
        ,
          c_h2 {}
          , 'Users Form'
        c_li {}
        ,
          c_h2 {}
          , 'Users Modal'
        c_li {}
        ,
          c_h2 {}
          , 'Users Table'
        c_li {}
        ,
          c_h2 {}
          , 'Users'
