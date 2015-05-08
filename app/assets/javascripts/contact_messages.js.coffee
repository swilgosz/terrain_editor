init = ->
  form = $("#new_contact_message")
  form.on "submit", (event) ->
    event.preventDefault()
    $.ajax
      url: $(this).attr("action"),
      type: "POST",
      dataType: "JSON",
      data: $(this).serialize()
    .done (data) ->
      form.closest(".container").find(".alert").remove()
      form.before(data.flash)
      form.before(data.form)
      form.remove()
      init()

    event.stopPropagation()


@ContactMessages = { init }
