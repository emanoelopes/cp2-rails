# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#novo_restaurante').fancybox
  width: 400
  height: 400
  autoSize: true
  href: '/restaurantes/new'
  type: 'ajax'
