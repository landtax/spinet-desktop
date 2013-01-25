var html_panel;
Meteor.startup(function () {
  // code to run on server at startup
  var url = "http://ws04.iula.upf.edu:8080/soaplab2-axis/panel.jsp?serviceName=text_mining.kwic"
  var html = Meteor.http.get(url);
  html_panel = html.content
});

Meteor.methods({

  fetch_form_fields: function () {
    return html_panel;
  }

});
