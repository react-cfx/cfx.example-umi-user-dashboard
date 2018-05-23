import cfxify from 'cfx.react.dom'

import { Comps } from 'cfx.example-umi-user-dashboard.View'

{ MainLayout,Header } = Comps

CFX = cfxify {
  'h1'
  MainLayout: MainLayout Header()
}

export default ->
  {
    c_MainLayout
    c_h1
  } = CFX

  c_MainLayout {}
