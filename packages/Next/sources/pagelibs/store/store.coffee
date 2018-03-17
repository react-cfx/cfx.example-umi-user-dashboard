# import { ddbs as dd } from 'ddeyes'

import app from '../deps/Sdk'

import {
  Provider
  connectBindApp
} from 'cfx.react-redux'

export connect = connectBindApp app
export {
  app
  Provider
}
