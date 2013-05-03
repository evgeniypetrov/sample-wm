require.config
#enforceDefine: true
  paths:
    jquery: "lib/jquery"
    underscore: "webmate/libs/underscore"
    backbone: "webmate/libs/backbone"
    icanhaz: "webmate/libs/icanhaz"
    benchmark: "webmate/libs/benchmark"
    socketio: "webmate/libs/socket.io"
    webmate: 'webmate'
    sync: "webmate/backbone_ext/sync"
    resources: "webmate/backbone_ext/resources"
    auth: 'webmate/auth'
    client: 'webmate/client'
  shim:
    underscore:
      deps: []
      exports: "_"
    backbone:
      deps: ["underscore"]
      exports: "Backbone"
    webmate:
      deps: ['backbone', 'jquery', 'underscore', 'auth', 'socketio']
      exports: 'Webmate'
    sync:
      deps: ['backbone', 'jquery', 'underscore', 'webmate']
      exports: "Backbone"
    socketio:
      deps: [],
      exports: 'io'
    client:
      deps: ['backbone', 'webmate']
      exports: 'Webmate.Client'

define 'app', ['backbone', 'underscore', 'webmate', 'sync'], (Backbone, _, Webmate, sync) ->
  {
    Models: {}
    Collections: {}
    Views: {}
    Routers: {}
  }

require ['app', 'views/app_view'], (app, MainView) ->
  data = this.bootstrap_data
  this.App = app
  this.App.View = new MainView(data)

  $(document).ready( ->
    $('#container').html(window.App.View.render().el)
  )
