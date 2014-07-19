# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#

$(document).on 'ajax:success', '.js-stamp', (xhr, data, status) ->
  $(@).replaceWith(data)

$(document).on 'ajax:success', '.js-unstamp', (xhr, data, status) ->
  $(@).replaceWith(data)

$(document).on 'click', '#tabTutorial', ->
  $('#js-stampArea').hide()
  $('#js-tutorialArea').show()
  $('#tabList').hide()
  $('#tabList2').show()
  console.log('1')

$(document).on 'click', '#tabStamp2', ->
  $('#js-stampArea').show()
  $('#js-tutorialArea').hide()
  $('#tabList').show()
  $('#tabList2').hide()
  console.log('2')
