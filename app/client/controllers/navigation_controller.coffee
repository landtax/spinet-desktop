
Template.navigation.events(
  'click .nav a' :  (e) ->
    url = $(e.target).attr('href')
    Navigation.arrival_to url
)

Template.navigation.menu_items = -> 
  _(['/intro', '/run_experiment', '/results', '/options', '/about']).map (path) ->
    Router.get path

Template.navigation.is_current_path = (url) -> 
  Navigator.here() == url






