Class {
	#name : #FamixTest7NamedEntity,
	#superclass : #FamixTest7Entity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Famix-Test7-Entities-Entities'
}

{ #category : #meta }
FamixTest7NamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixTest7Entity>
	<package: #'Famix-Test7-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTest7NamedEntity class >> isAbstract [

	<generated>
	^ self == FamixTest7NamedEntity
]
