# App view
define [
  'backbone',
  'underscore',
  'jquery',
  'webmate',
  'views/dashboard_view',
  'views/auth_view'
  ],
  (Backbone, _, $, Webmate, DashboardView, AuthView) ->
    view = Backbone.View.extend(
      initialize: ->
        console.log('main view initialized and template')

      render: ->
        console.log('TODO: add before:render & after:render events')
        @$el.empty()

        if Webmate.Auth.isAuthorized()
          # render dashboard
          @show(@dashboard_view())
        else
          # render auth/page
          @show(@auth_view())

        @

      show: (view) ->
        console.log('view - show ')
        console.log(view)
        @$el.html(view.render().$el)
        @

      # private function
      dashboard_view: () ->
        @_dashboard_view ||= new DashboardView()

      auth_view: () ->
        @_auth_view ||= new AuthView()

    )

    return view
