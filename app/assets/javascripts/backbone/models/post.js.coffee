class BackboneTest.Models.Post extends Backbone.Model
  paramRoot: 'post'

class BackboneTest.Collections.PostsCollection extends Backbone.Collection
  model: BackboneTest.Models.Post
  url: '/posts'
