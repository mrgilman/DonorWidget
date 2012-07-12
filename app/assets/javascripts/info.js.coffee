# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

renderWidget = (widget) ->
  container = $('.widget')[0]
  $(container).append Mustache.to_html($('#widget-template').html(), widget)

$ ->
  $.getJSON("/widgets/1", renderWidget)


