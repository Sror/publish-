define [
  'jquery'
  'lodash'
  'backbone'
  'cs!../model/Files'
  'tpl!../templates/listItem.html'
], ($, _, Backbone, Files, Template) ->

  class ItemView extends Backbone.Marionette.ItemView
    template: Template
    initialize: ->
      @model.on "change", @render


  class ListView extends Backbone.Marionette.CollectionView
    itemView: ItemView
