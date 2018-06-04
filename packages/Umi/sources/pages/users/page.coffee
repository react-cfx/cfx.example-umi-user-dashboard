### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'
import { Component } from 'react'

import { Pages } from '../../deps/Page'
{ UsersPage } = Pages

import {
  connect
  app
} from '../../store'
{ actions } = app._

import {
  getState
} from './common'

CFX = cfxify {
  UsersPage
}

class StoryUsers extends Component

  constructor: (props) ->
    super props
    @state =
      list: []
      total: 0
      page: 0

  UNSAFE_componentWillMount: ->
    @props.actions.fetch()
    @

  componentWillReceiveProps: (nextProps) ->
    {
      list
      total
      page
    } = nextProps.state
    @setState {
      list
      total
      page
    }
    @

  render: ->

    {
      list
      total
      current
    } = @state

    { c_UsersPage } = CFX
    c_UsersPage {
      list
      total
      current
    }

mapStateToProps = (state) ->
  getState state.users

mapActionToProps =
  fetch: actions.userFetch

export default connect(
  mapStateToProps
  mapActionToProps
  StoryUsers
)
