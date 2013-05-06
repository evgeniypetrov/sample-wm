define (require) ->
  router = Backbone.Router.extend(
    routes:
      "about"  : "showAboutPage"

    # first-level route handlers
    showAboutPage: () ->
      constructor = require('views/pages/about')
      console.log(constructor)
      view = new constructor()
      console.log(view)

      window.App.View.show(view)
  )

  router
