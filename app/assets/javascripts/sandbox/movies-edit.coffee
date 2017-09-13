# Select 2 JS for Movies Edit form

$("#dropdown").select2 theme: "bootstrap"

$(document).on 'page:change', ()->

  onAddFile = (event) ->
    file = event.target.files[0]
    url = URL.createObjectURL(file)
    return 

  # for redisplayed file inputs and file inputs in edit page
  $('input[type=file]').each ->
    $(this).change(onAddFile)
    return
  return

$imagePreview = (image, upload) ->
  preview = $(image)
  $(upload).change (event) ->
    input = $(event.currentTarget)
    file = input[0].files[0]
    reader = new FileReader

    reader.onload = (e) ->
      image_base64 = e.target.result
      preview.attr 'src', image_base64
      return

    reader.readAsDataURL file
    return
  return

main = ->
	$imagePreview '.image-preview img', 'edit-photo'
	return

$(document).ready main


