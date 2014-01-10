class BackboneTest.Views.PostsEditView extends Backbone.View
  el: '#posts'

  template: JST["backbone/templates/posts/edit"]

  events:
    "submit #edit-post" : "update"

  initialize: ->
    @render()

  render: ->
    @$el.html @template(@model.toJSON())
    @

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    title = $('#title').val()
    content = $('#content').val()
    @model.save {title: title, content: content},
      success: (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"
