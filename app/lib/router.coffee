class Router
  @routes: {}
  @add: (route) ->
    @routes[route['path']] = route
  @get: (path) ->
    @routes[path]
  @get_current: ->
    @routes[Navigator.here()]

Router.add {"path": "/intro", "title": "Introduction", "template": ""}
Router.add {"path": "/run_experiment", "title": "Run Experiment", "template": "page_run_experiment"}
Router.add {"path": "/results", "title": "Results", "template": "page_results"}
Router.add {"path": "/options", "title": "Options", "template": "page_show_experiment"}
Router.add {"path": "/about", "title": "About", "template": ""}

