# import { ddbs as dd } from 'ddeyes'
import cfxify from 'cfx.dom'

CFX = cfxify { 'a' }

aHerf = (
  {
    key
    where
  }
  propsFunc = => {}
) => ({
  children
}) =>

  { c_a } = CFX
  props = propsFunc key

  c_a {
    props...
    key
    href: where
  }
  , children

aClick = (linkTo) => (
  {
    key
    where
  }
  propsFunc = => {}
) => ({
  children
}) =>

  { c_a } = CFX
  _props = propsFunc key

  {
    action
    props...
  } = _props

  onClick = =>

    action key if action? and (
      typeof action is 'function'
    )

    if Array.isArray where
    then linkTo.apply null, where
    else linkTo where

  c_a {
    props...
    key
    href: "javascript: void(0);"
    onClick
  }
  , children

linkDom = (Link) => (
  {
    key
    where
  }
  propsFunc = => {}
) => ({
  children
}) =>

  CFX = CFX._.extends { Link }
  { c_Link } = CFX
  props = propsFunc key

  c_Link {
    props...
    key
    where...
  }
  , children

getLinks = (
  routers
  {
    story
    umi
    custom
  }
  propsFunc = => {}
) =>

  Link =
    if story?
      aClick story
    else if umi?
      (
        {
          key
          where
        }
        propsFunc
      ) =>
        ( linkDom umi ) {
          key
          where:
            to: where
        }
        , propsFunc
    else if custom?
      linkDom custom
    else aHerf

  Object.keys routers
  .reduce (r, c) =>
    {
      r...
      "#{c}":
        Link
          key: c
          where: routers[c]
        , propsFunc
    }
  , {}

export default (
  Links
  defaultRouters
  defaultPropsFunc = =>
) =>

  if Links?
  then Links
  else (
    getLinks defaultRouters
    , {}
    , defaultPropsFunc
  )

export {
  getLinks
}
