Class {
	#name : #FamixTestComposed1SourceAnchor,
	#superclass : #FamixTestComposed1Entity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-TestComposedSubmetamodel1-Entities-Entities'
}

{ #category : #meta }
FamixTestComposed1SourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTestComposed1Entity>
	<package: #'Famix-TestComposedSubmetamodel1-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTestComposed1SourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTestComposed1SourceAnchor
]
