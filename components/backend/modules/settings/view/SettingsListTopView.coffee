define [
  'jquery'
  'lodash'
  'backbone'
  'marionette'
  'tpl!../templates/list.html'
], 
($, _, Backbone, Marionette, Template) ->   
  class SettingsListTopView extends Backbone.Marionette.ItemView    
    template: Template