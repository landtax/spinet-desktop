Template.spinet_form.events
  'click input' : -> 
    if typeof console != 'undefined'
      console.log("You pressed the button")

Template.spinet_form.form_fields = -> 
  fields = Meteor.call "fetch_form_fields", (error, result) -> 
    Session.set "raw_html_form", result

  Session.get("raw_html_form")

Template.form_options.options = -> 
  ["bio", "flush", "keeptags", "noafx", "nodate", "nodict", "noloc", "nonec", "noner", "nonumb", "noprob", "nopunt", "noquant", "xmlcqp"]



