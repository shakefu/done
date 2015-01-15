Router.configure
  layoutTemplate: 'Layout'
  notFoundTemplate: 'NotFound'
  loadingTemplate: 'Loading'

Router.route '/', name: 'Index'
Router.route '/do', name: 'Done'

exports = if Meteor.isServer then global else window
exports.Items = Items = new Meteor.Collection 'items'



if Meteor.isServer
  Meteor.startup ->


