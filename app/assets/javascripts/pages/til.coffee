class @Tils
  self = this
  @init: ->
    $('.til-edit').on 'click', ->
      console.log $(this).data('til')
$ ->
$(document).on "ready turbolinks:load", (e) ->
  Tils.init()
