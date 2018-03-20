# import { ddbs as dd } from 'ddeyes'

import prefixDom from '../../../utils/cfx'
import { Menu, Icon } from 'antd'
import getLink from './Link'
MenuItem = Menu.Item

CFX = prefixDom {
  'a'
  Menu
  MenuItem
  Icon
}

export default (Link) => ({
  location
}) ->

  CFX = CFX.extends getLink Link

  {
    c_a
    c_Menu
    c_MenuItem
    c_Icon

    c_Index
    c_Users
    c_Fof
  } = CFX

  c_Menu {
    selectedKeys:
      unless location?
      then [ '/' ]
      else [ location.pathname ]
    mode: 'horizontal'
    theme: 'dark'
  }
  ,
    c_MenuItem
      key: '/'
    ,
      c_Index {}
      ,
        c_Icon type: 'home'
      , 'Home'

    c_MenuItem
      key: '/users'
    ,
      c_Users {}
      ,
        c_Icon type: 'bars'
      , 'Users'

    c_MenuItem
      key: '/umi'
    ,
      c_a
        href: 'https://github.com/umijs/umi'
        target: '_blank'
        rel: 'noopener noreferrer'
      , 'dva'

    c_MenuItem
      key: '/dva'
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
        target: '_blank'
        rel: 'noopener noreferrer'
      , 'dva'

    c_MenuItem
      key: '/404'
    ,
      c_Fof {}
      ,
        c_Icon type: 'frown-circle'
      , '404'
