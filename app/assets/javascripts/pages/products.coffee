class @Products
  self = this
  @init: ->

  @add_product: ->
    $('.add-product-button').on 'click', ->
      $('#new-product-modal').modal('show')

  @edit_product: ->
    $('.product-edit').on 'click', ->
      $('#edit-product-modal').modal('show')
      product = $(this).data('product')
      keys = Object.keys(product)
      keys.map((key) => $("[name=#{key}]").val(product[key]) )

  @remove_product: ->
    $('.product-delete').on 'click', ->
      confirm = window.confirm "Are you sure you want to delete this product?"
      if confirm
        modal_parent = $(this).closest(".modal").attr("id")
        id = $(this).data('productId') || ""
        url = $(this).data("url")
        method = $(this).data("method")
        $.ajax
          url: "#{url}/#{id}"
          type: method
          success: (response) ->
            $("##{modal_parent}").modal('hide')
            Turbolinks.visit window.location.pathname
          complete: ->
            $("##{modal_parent}").modal('hide')

  @save_product: ->
    $('.new-product-save').on 'click', ->
      modal_parent = $(this).closest(".modal").attr("id")
      id = $("##{modal_parent} [name='id']").val() || ""
      url = $(this).data("url")
      method = $(this).data("method")
      data = $("##{modal_parent} form").serializeArray()
      $.ajax
        url: "#{url}/#{id}"
        type: method
        data: data
        success: (response) ->
          $("##{modal_parent}").modal('hide')
          Turbolinks.visit window.location.pathname
        error: (a,b,c,d,e) ->
          message = a.responseJSON.message
          showNotification('danger', message)
$ ->
$(document).on "ready turbolinks:load", (e) ->
  Products.init()
  Products.add_product()
  Products.save_product()
  Products.edit_product()
  Products.remove_product()
