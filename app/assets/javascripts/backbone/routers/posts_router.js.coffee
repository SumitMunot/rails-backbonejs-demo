class BackboneTest.Routers.PostsRouter extends Backbone.Router

  initialize: (options) ->
    @posts = new BackboneTest.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "index"       : "index"
    "new"         : "newPost"
    ":id"         : "show"
    ":id/edit"    : "edit"
    ".*"          : "index"

  index: ->
    @view = new BackboneTest.Views.PostsIndexView({collection: @posts})

  newPost: ->
    @view = new BackboneTest.Views.PostsNewView({collection: @posts})

  show: (id) ->
    post = @posts.get(id)
    @view = new BackboneTest.Views.PostsShowView({model: post})

  edit: (id) ->
    post = @posts.get(id)
    @view = new BackboneTest.Views.PostsEditView({model: post})
