class Tumbs.Views.PicturesIndex extends Backbone.View
  template: JST["pictures/index"]
  initialize: -> @collection.on("reset", @render, this)
  render: ->
    pictures = @collection.map (pic)-> pic.toJSON()
    @$el.html @template pictures: pictures; this
