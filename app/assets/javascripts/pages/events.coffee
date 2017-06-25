# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class @Events
  self = this

  self.calendar_options =
    startParam: 'start_time'
    endParam: 'end_time'
    events: '/events.json'
    dayClick: (date, jsEvent, view) ->
      $("[name='new-event-date']").val(date.format('MM/DD/YYYY'))
      $("#new-event-modal").modal("show")

  @init: ->
    $('#calendar').fullCalendar(self.calendar_options) if $('#calendar').length

$ ->
$(document).on "ready turbolinks:load", (e) ->
  Events.init()
