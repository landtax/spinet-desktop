Handlebars.registerHelper 'render', (name, options) -> 
 if (Template[name])
   new Handlebars.SafeString Template[name]()

Handlebars.registerHelper 'render_current_page', ->

  template =  Router.get_current()['template']

  if (Template[template])
    new Handlebars.SafeString Template[template]()





