# import { ddbs as dd } from 'ddeyes'
import app from 'cfx.example-umi-user-dashboard.Sdk'
import {
  Provider
  connectBindApp
} from 'cfx.react-redux'

export connect = connectBindApp app
export {
  app
  Provider
}
