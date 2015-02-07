@Contacts = new Meteor.Collection('contacts');

Schemas.Contacts = new SimpleSchema
	name:
		type:String
		max: 60

	email:
		type:String

	phone:
		type:String

	custommessage:
		type:String
		autoform:
			rows: 5

	createdAt: 
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type:Date
		optional:true
		autoValue: ->
			if this.isUpdate
				new Date()

	owner: 
		type: String
		regEx: SimpleSchema.RegEx.Id
		autoValue: ->
			if this.isInsert
				Meteor.userId()
		autoform:
			options: ->
				_.map Meteor.users.find().fetch(), (user)->
					label: user.emails[0].address
					value: user._id

Contacts.attachSchema(Schemas.Contacts)





