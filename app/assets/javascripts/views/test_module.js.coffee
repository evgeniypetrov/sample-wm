define (require) ->
  console.log('anonimous module loaeded')

  class TestClass
    showPage1: ->
      console.log('show page 1')
      auth_view = require('views/auth_view')
      console.log(new auth_view())

    showPage2: ->
      console.log('show page 2')
      dashboard_view = require('views/dashboard_view')
      console.log(new dashboard_view())

  TestClass
