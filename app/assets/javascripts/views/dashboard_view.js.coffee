define [
    'backbone',
    'underscore',
    'jquery'
  ], (Backbone, _, $) ->
    view = Backbone.View.extend(
      initialize: ->
        console.log('dashboard view initialized')

      render: ->
        @$el.empty()
        @$el.html("<h1>dasboard</h1>")

        @
    )
    return view
