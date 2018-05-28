### eslint-disable import/first ###
# import { ddbs as dd } from 'ddeyes'

import { Component } from 'react'
import cfxify from 'cfx.react.dom'
import { Menu, Icon } from 'antd'
MenuItem = Menu.Item

import getLinks from 'cfx.react.link'

CFX = cfxify {
  'a'
  Menu
  MenuItem
  Icon
}

export default (Link) => ({
  location
}) =>

  CFX = CFX._.extends (
    getLinks Link
    ,
      Home: '/'
      Users: '/users'
      Fof: '/404'
  )

  {
    c_a
    c_Menu
    c_MenuItem
    c_Icon

    c_Home
    c_Users
    c_Fof
  } = CFX

  c_Menu {
    selectedKeys:
      if location?.pathname?
      then [ location.pathname ]
      else [ '/' ]
    mode: 'horizontal'
    theme: 'dark'
  }
  ,
    c_MenuItem
      key: '/'
    ,
      c_Home {}
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
      , 'umi'

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
