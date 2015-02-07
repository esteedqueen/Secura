Template.panic.events ->
	walkieTalkieButton = document.querySelector('.walkie-talkie')

	buttonDown = ->
		walkieTalkieButton.classList.add 'down-state'
		return

	buttonUp = ->
		walkieTalkieButton.classList.remove 'down-state'
		return

	walkieTalkieButton.addEventListener 'mousedown', buttonDown, false
	walkieTalkieButton.addEventListener 'mouseup', buttonUp, false


Template.setUserName.helpers
	user: ->
		Meteor.user()