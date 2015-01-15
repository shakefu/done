UI.registerHelper 'pageTitle', (args...) ->
  document.title = args[..-2].join ''
  undefined

Template.Index.created = ->
  @welcome = new ReactiveVar 'Meteor Flare'

Template.Index.helpers
  welcome: -> Template.instance().welcome.get()
