Class {
	#name : #FamixTest4School,
	#superclass : #FamixTest4Entity,
	#instVars : [
		'#principal => FMOne type: #FamixTest4Principal opposite: #school',
		'#rooms => FMMany type: #FamixTest4Room opposite: #school',
		'#students => FMMany type: #FamixTest4Student opposite: #school',
		'#teachers => FMMany type: #FamixTest4Teacher opposite: #school'
	],
	#category : #'Famix-Test4-Entities-Entities'
}

{ #category : #meta }
FamixTest4School class >> annotation [

	<FMClass: #School super: #FamixTest4Entity>
	<package: #'Famix-Test4-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FamixTest4School >> addRoom: anObject [
	<generated>
	^ self rooms add: anObject
]

{ #category : #adding }
FamixTest4School >> addStudent: anObject [
	<generated>
	^ self students add: anObject
]

{ #category : #adding }
FamixTest4School >> addTeacher: anObject [
	<generated>
	^ self teachers add: anObject
]

{ #category : #accessing }
FamixTest4School >> principal [
	"Relation named: #principal type: #FamixTest4Principal opposite: #school"

	<generated>
	<derived>
	^ principal
]

{ #category : #accessing }
FamixTest4School >> principal: anObject [

	<generated>
	principal := anObject
]

{ #category : #navigation }
FamixTest4School >> principalGroup [
	<generated>
	<navigation: 'Principal'>
	^ MooseSpecializedGroup with: self principal
]

{ #category : #accessing }
FamixTest4School >> rooms [
	"Relation named: #rooms type: #FamixTest4Room opposite: #school"

	<generated>
	<derived>
	^ rooms
]

{ #category : #accessing }
FamixTest4School >> rooms: anObject [

	<generated>
	rooms value: anObject
]

{ #category : #navigation }
FamixTest4School >> roomsGroup [
	<generated>
	<navigation: 'Rooms'>
	^ MooseSpecializedGroup withAll: self rooms asSet
]

{ #category : #accessing }
FamixTest4School >> students [
	"Relation named: #students type: #FamixTest4Student opposite: #school"

	<generated>
	<derived>
	^ students
]

{ #category : #accessing }
FamixTest4School >> students: anObject [

	<generated>
	students value: anObject
]

{ #category : #navigation }
FamixTest4School >> studentsGroup [
	<generated>
	<navigation: 'Students'>
	^ MooseSpecializedGroup withAll: self students asSet
]

{ #category : #accessing }
FamixTest4School >> teachers [
	"Relation named: #teachers type: #FamixTest4Teacher opposite: #school"

	<generated>
	<derived>
	^ teachers
]

{ #category : #accessing }
FamixTest4School >> teachers: anObject [

	<generated>
	teachers value: anObject
]

{ #category : #navigation }
FamixTest4School >> teachersGroup [
	<generated>
	<navigation: 'Teachers'>
	^ MooseSpecializedGroup withAll: self teachers asSet
]
