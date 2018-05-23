import dd from 'ddeyes'
import getService from 'cfx.service'
PAGE_SIZE = 3

urlConf =
  host: [
    # 'cors-anywhere.herokuapp.com/'
    # 'http://'
    'jsonplaceholder.typicode.com'
  ].join ''

business =

  users:

    fetch: ({
      request
      baseUrl
    }) => ({
      page
    }) =>
      request "#{baseUrl}?_page=#{page}&_limit=#{PAGE_SIZE}"
      ,
        method: 'GET'

    remove: ({
      request
      baseUrl
    }) => ({
      id
    }) =>
      request "#{baseUrl}/#{id}"
      ,
        method: 'DELETE'

    patch: ({
      request
      baseUrl
    }) => ({
      id
      data
    }) =>
      request "#{baseUrl}/#{id}"
      ,
        method: 'PATCH'
        data: JSON.stringify data

    create: ({
      request
      baseUrl
    }) => ({
      data
    }) =>
      request "#{baseUrl}"
      ,
        method: 'POST'
        data: JSON.stringify data

export default getService {
  urlConf
  business
}
