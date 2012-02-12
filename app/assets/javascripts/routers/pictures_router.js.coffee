class Tumbs.Routers.Pictures extends Backbone.Router
  routes:
    "/": "index"
    "/pictures/:slug": "show"
  initialize: ->
    @pictures = new Tumbs.Collections.Pictures
    @pictures.resetFromJSON $(":json#pictures")
  index: ->
    view = new Tumbs.Views.PicturesIndex collection: @pictures
    $("#main").html view.render().el
  show: (slug)->
    view = new Tumbs.Views.PicturesShow model: @pictures.findBySlug slug
    $("#main").html view.render().el
