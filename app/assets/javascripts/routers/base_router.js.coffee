define [
  'backbone',
  'routers/pages_router'
], (Backbone, PagesRouter) ->

  class BaseRouter extends Backbone.Router
    initialize: () ->
      @routers = []
      @routers.push(new PagesRouter())

    start: () ->
      Backbone.history.start({ pushState: true, root: '/' })

  BaseRouter
