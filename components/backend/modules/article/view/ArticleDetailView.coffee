define [
  'jquery',
  'lodash',
  'backbone',
  'tpl!../templates/detail.html',
], ($, _, Backbone, Template) ->

  class ArticleDetailView extends Backbone.Marionette.ItemView

    template: Template

    events:
      "blur input": "save"

    ui:
      title: '[name=title]'
      author: '[name=author]'
      article: '[name=article]'

    save: ->
      @model.set
        title: @ui.title.val()
        author: @ui.author.val()
        desc: @ui.article.val()

      if @model.isNew()
        App.Articles.create @model,
          wait: true
          success: (res) ->
            App.Router.navigate 'article/'+res.attributes._id, false
      else
        @model.save()

