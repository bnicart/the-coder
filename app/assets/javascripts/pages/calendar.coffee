# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class @Calendar
  self = this

  self.calendar_options =
    dayClick: (date, jsEvent, view) ->
      $("[name='new-event-date']").val(date.format('MM/DD/YYYY'))
      $("#new-event-modal").modal("show")

  @init: ->
    $(document).on "turbolinks:load", ->
      $('#calendar').fullCalendar(self.calendar_options) if $('#calendar').length

$ ->
  Calendar.init()
