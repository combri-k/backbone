class Tumbs.Views.PicturesShow extends Backbone.View
  template: JST["pictures/show"]
  initialize: -> @model.on("reset", @render, this)
  render: -> @$el.html @template picture: @model; this
