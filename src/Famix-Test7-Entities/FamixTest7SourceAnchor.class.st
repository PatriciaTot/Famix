Class {
	#name : #FamixTest7SourceAnchor,
	#superclass : #FamixTest7Entity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-Test7-Entities-Entities'
}

{ #category : #meta }
FamixTest7SourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTest7Entity>
	<package: #'Famix-Test7-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTest7SourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTest7SourceAnchor
]
