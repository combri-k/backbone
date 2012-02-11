class Tumbs.Routers.Pictures extends Backbone.Router
  routes:
    "/pictures/:slug": "show"
  initialize: ->
    @pictures = new Tumbs.Collections.Pictures
    @pictures.resetFrom $("#json-pictures")
  show: (slug)->
    view = new Tumbs.Views.PicturesShow model: @pictures.findBySlug slug
    $("#dynamic-picture-content").html view.render().el
