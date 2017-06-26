# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class @Events
  self = this

  self.calendar_options =
    events: '/events.json'
    dayClick: (date, jsEvent, view) ->
      $("#new-event-modal [name='start_time']").val(date.format('YYYY/MM/DD'))
      $("#new-event-modal [name='end_time']").val(date.format('YYYY/MM/DD'))
      $("#new-event-modal").modal("show")
    eventClick: (event, jsEvent, view) ->
      $("#edit-event-modal [name='event_id']").val(event.id)
      $("#edit-event-modal [name='start_time']").val(event.start.format('YYYY/MM/DD'))
      $("#edit-event-modal [name='end_time']").val((event.end || event.start).format('YYYY/MM/DD'))
      $("#edit-event-modal [name='title']").val(event.title)
      $("#edit-event-modal [name='description']").val(event.description)
      $("#edit-event-modal").modal("show")
    eventRender: (event, element, view) ->
      # console.log event

  @init: ->
    $('#calendar').fullCalendar(self.calendar_options) if $('#calendar').length
    $('.date').datetimepicker({timepicker:false,format:'Y/m/d'})

  @save_event: ->
    $('.new-event-save, .edit-event-save').on 'click', ->
      modal_parent = $(this).closest(".modal").attr("id")
      id = $("##{modal_parent} [name='event_id']").val() || ""
      start_time = $("##{modal_parent} [name='start_time']").val()
      end_time = $("##{modal_parent} [name='end_time']").val()
      title = $("##{modal_parent} [name='title']").val()
      description = $("##{modal_parent} [name='description']").val()
      url = $(this).data("url")
      method = $(this).data("method")
      $.ajax
        url: "#{url}/#{id}"
        type: method
        data:
          event:
            start_time: start_time
            end_time: end_time
            title: title
            description: description
        success: (response) ->
          $("##{modal_parent}").modal('hide')
          Turbolinks.visit window.location.pathname
        complete: ->
          $("##{modal_parent}").modal('hide')

  @remove_event: ->
    $(".delete-event").on 'click', ->
      confirm = window.confirm "Are you sure you want to delete this event?"
      if confirm
        modal_parent = $(this).closest(".modal").attr("id")
        id = $("##{modal_parent} [name='event_id']").val() || ""
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
$ ->
$(document).on "ready turbolinks:load", (e) ->
  Events.init()
  Events.save_event()
  Events.remove_event()
