# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
$('#novo_cliente').fancybox
  width: 400
  height: 400
  autoSize: true
  href: '/clientes/new'
  type: 'ajax'
