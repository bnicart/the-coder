class @Tils
  self = this
  @init: ->
    $('.til-edit').on 'click', ->
      console.log $(this).data('til')
      til = $(this).data('til')

      $('#til_id').val(til.id)
      CKEDITOR.instances.til_description.setData(til.description)
    $('.til-delete').on 'click', ->
      id = $(this).data('tilId')
      url = $(this).data("url")
      method = $(this).data("method")
      confirm = window.confirm "Are you sure you want to delete this learning?"
      if confirm
        $.ajax
          url: "#{url}/#{id}"
          type: method
          success: (response) ->
            Turbolinks.visit window.location.pathname
          complete: ->

$ ->
$(document).on "ready turbolinks:load", (e) ->
  Tils.init()
  $('.ckeditor').ckeditor();
