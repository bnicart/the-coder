# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class @UsanaProducts
  self = this
  @init: ->
  @add_product: ->
    $('.add-product-button').on 'click', ->
      $('#new-product-modal').modal('show')
  @save_product: ->
    $('.new-product-save').on 'click', ->
      $('#new-product-modal').modal('hide')
$ ->
$(document).on "ready turbolinks:load", (e) ->
  UsanaProducts.init()
  UsanaProducts.add_product()
  UsanaProducts.save_product()
