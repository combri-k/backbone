$.extend $.expr[":"],
  json: (el)->
    $(el).is("script") and $(el).attr("type") == "application/json"
