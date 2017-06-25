ready = ->
  $(window).scroll ->
    element = $('#page-tweets-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 200
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#move-page-tweets', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)
