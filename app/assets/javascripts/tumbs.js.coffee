# Own Addenda
Backbone.Collection::resetFrom = (el)->
  @reset $.parseJSON el.html()
Backbone.Collection::findBySlug = (slug)->
  _.find @models || [], (model)-> model.get("slug") == slug

window.Tumbs =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Tumbs.Routers.Pictures
    Backbone.history.start()

$(document).ready ->
  Tumbs.init()
