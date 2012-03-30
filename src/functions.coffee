###

Functions

###

# Local storage
Evan.local = (key, value) ->

	# Can we even do it?
	return if not localStorage

	# Getter
	if arguments.length is 1
		return localStorage.getItem(key)

	# Clear it no matter what (for iOS)
	localStorage.removeItem(key)

	# Setter
	if value isnt null
		unless value.toUpperCase
			value = JSON.stringify(value)
		localStorage.setItem(key, value)

# Should the window be narrow or wide?
Evan.windowWidth = ->

	# Get set up
	doc = $(document.documentElement)
	windowIsNarrow = (window.innerWidth < Evan.narrowMax) or (document.body.clientWidth < Evan.narrowMax)

	# Add classes or not
	if windowIsNarrow
		doc.addClass('narrow-window')
		doc.removeClass('wide-window')
	else
		doc.removeClass('narrow-window')
		doc.addClass('wide-window')
