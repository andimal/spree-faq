(($) ->
  $('.answer').hide()
  $('.question').on 'click', ->
    id = $(this).prop('id').split('_')[1]
    $('#answer_' + id).slideToggle()
    return false

) jQuery
