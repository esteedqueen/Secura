@Config =
	name: 'Secura'
	title: 'Feel safe always with the click of a button!'
	
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
	blog: '#'
	about: '#'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: '#'
			icon: 'facebook'
		twitter:
			url: '#'
			icon: 'twitter'
		github:
			url: '#'
			icon: 'github'
		info:
			url: '#'
			icon: 'link'
	publicRoutes: ['home']