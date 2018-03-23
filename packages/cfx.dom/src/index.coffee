import {
  createElement
  createFactory
} from 'react'

cfxify = (e) => createFactory e
  # return createFactory e if typeof e is 'string'
  # (args...) =>
  #   createElement.apply null
  #   , [
  #     args...
  #     e
  #   ]

compsCfxify = (domObj) =>

  (
    Object.keys domObj
  ).reduce (r, c) =>
    {
      r...
      "c_#{c}": cfxify domObj[c]
    }
  , {}

handleComps = (domObj) =>

  CFX = compsCfxify domObj

  _extends = (extendsDomObj) ->
    _CFX = {
      @...
      ( compsCfxify extendsDomObj )...
    }

    {
      _CFX...
      _:
        extends: _extends.bind _CFX
    }

  {
    CFX...
    _:
      extends: _extends.bind CFX
  }

export default (waiToCfxify) =>
  if typeof waiToCfxify is 'object'
  then handleComps waiToCfxify
  else cfxify waiToCfxify
