# import dd from 'ddeyes'
import { createApp } from 'cfx.redux.redux'

import reducers from './reducers'
import sagas from './sagas'

export default createApp {
  reducers
  sagas
}
