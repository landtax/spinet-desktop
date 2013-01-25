Template.spinet_form.events({
  'click input' : function () {
    // template data, if any, is available in 'this'
    if (typeof console !== 'undefined')
      console.log("You pressed the button");
  }
});


Template.spinet_form.form_fields = function () {
  fields = Meteor.call("fetch_form_fields", 
                       function(error, result){
                         Session.set("raw_html_form", result);

  });

  return Session.get("raw_html_form");
};







