define (require) ->
  view = Backbone.View.extend
    initialize: ->
      console.log('about page view initialized')

    render: ->
      @$el.empty()
      @$el.html("<h1>about page view</h1>")
      @

    # trying to use dynamic templates
    # load-render-forgot)
    render_template: (template) ->
      require(template)
      @$el.html(JST[template]())

      @

  view
