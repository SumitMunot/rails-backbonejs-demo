class BackboneTest.Views.PostView extends Backbone.View
  template: JST["backbone/templates/posts/post"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()
    return false

  render: ->
    @$el.html(@template(@model.toJSON()))
    return this
