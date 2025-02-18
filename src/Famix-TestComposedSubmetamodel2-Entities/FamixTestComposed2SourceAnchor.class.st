Class {
	#name : #FamixTestComposed2SourceAnchor,
	#superclass : #FamixTestComposed2Entity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-TestComposedSubmetamodel2-Entities-Entities'
}

{ #category : #meta }
FamixTestComposed2SourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTestComposed2Entity>
	<package: #'Famix-TestComposedSubmetamodel2-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTestComposed2SourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTestComposed2SourceAnchor
]
