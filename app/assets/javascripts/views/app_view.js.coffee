# App view
define [
  'backbone',
  'underscore',
  'jquery',
  'webmate'
  ],
  (Backbone, _, $, Webmate) ->
    view = Backbone.View.extend(
      #template: JST['templates/app']
      initialize: ->
        console.log('main view initialized and template')

      render: ->
        @$el.html(@template())

        @
    )
    return view
