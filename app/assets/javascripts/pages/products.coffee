class @Products
  self = this
  @init: ->
  @add_product: ->
    $('.add-product-button').on 'click', ->
      $('#new-product-modal').modal('show')
  @save_product: ->
    $('.new-product-save').on 'click', ->
      modal_parent = $(this).closest(".modal").attr("id")
      id = $("##{modal_parent} [name='product_id']").val() || ""
      url = $(this).data("url")
      method = $(this).data("method")
      data =
        product: $("#newProductForm").serializeArray()
      $.ajax
        url: "#{url}/#{id}"
        type: method
        data: data
        success: (response) ->
          $("##{modal_parent}").modal('hide')
          Turbolinks.visit window.location.pathname
$ ->
$(document).on "ready turbolinks:load", (e) ->
  Products.init()
  Products.add_product()
  Products.save_product()
