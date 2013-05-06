define [
    'backbone',
    'underscore',
    'jquery',
    'templates/login'
  ], (Backbone, _, $, template) ->
    view = Backbone.View.extend(
      events:
        "click div.links a.about" : 'aboutUsLinkClicked'

      initialize: ->
        console.log('auth view initialized')

      render: ->
        template_data = {}

        @$el.html(JST['templates/login'](template_data))

        @

      # event handlers
      aboutUsLinkClicked: (e) ->
        e.preventDefault()

        path = $(e.currentTarget).attr('href')
        App.Router.navigate(path, trigger: true)
    )

    return view
