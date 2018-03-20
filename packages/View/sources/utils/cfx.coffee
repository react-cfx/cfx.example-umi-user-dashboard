import { prefixDom } from 'cfx.dom'

export default (domObj) =>

  CFX = prefixDom domObj

  _extends = (extendsDomObj) ->
    {
      @...
      ( prefixDom extendsDomObj )...
      extends: _extends
    }

  {
    CFX...
    extends: _extends
  }
