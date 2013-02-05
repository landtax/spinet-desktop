class Navigator
  @here: ->
    Session.get("navigator.current")

  @arrival_to: (route) ->
    Session.set("navigator.current", route)

  @initialize: ->
    @arrival_to(window.location.pathname)


