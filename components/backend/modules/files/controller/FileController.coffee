define [
  'cs!../../../utilities/Vent'
  'jquery'
  'lodash'
  'backbone'
  'marionette'
  'cs!../view/ListView'
  'cs!../view/DetailView'
  'cs!../view/TopView'
  'cs!../model/File'
  'cs!../model/Files'

], ( Vent, $, _, Backbone, Marionette, ListView, DetailView, TopView, File, Files) ->

  class MagazineController extends Backbone.Marionette.Controller

    detailsFile: (id) ->
      file = App.Files.where _id: id
      Vent.trigger 'app:updateRegion', "contentRegion", new DetailView model: files[0]

    list : ->
      Vent.trigger 'app:updateRegion', 'listTopRegion', new TopView
      Vent.trigger 'app:updateRegion', 'listRegion', new ListView collection: App.Files
      #App.sidebarRegion.show view


    browser: ->
      # Vent.trigger 'app:updateRegion', 'overlayRegion', new BrowseView collection:App.Files

    editFile:->
      # Vent.trigger 'app:updateRegion', 'overlayRegion', new EditFileView collection:App.Files