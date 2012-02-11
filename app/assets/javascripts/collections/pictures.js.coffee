class Tumbs.Collections.Pictures extends Backbone.Collection
  model: (models, options)-> new Tumbs.Models.Picture(models, options)
  url: "/pictures/"
