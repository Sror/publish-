define [
  'jquery'
  'lodash'
  'backbone'
], ($, _, Backbone) ->
  class StaticBlock extends Backbone.Model
    idAttribute: "_id"
