#we wait for turbo links to load.
jQuery(document).on 'turbolinks:load', ->
   # looks for ID in partial
  comments = $('#comments')
  if comments.length > 0 # if theres any comments
  	# 
  	App.global_chat = App.cable.subscriptions.create {
  		channel: 'BlogsChannel'
  		blog_id: comments.data('blog-id')
  	},
  	connected: ->
  	disconnected: ->
  	received: (data) ->
  		comments.append data['comment']
  	send_comment: (comment, blog_id) ->
  		@perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
  	$this = $(this)
  	textarea = $this.find('#comment_content')
  	if $.trim(textarea.val()).length > 1
  		App.global_chat.send_comment textarea.val(),
  		comments.data('blog-id')
  		textarea.val('')
  	e.preventDefault()
  	return false
