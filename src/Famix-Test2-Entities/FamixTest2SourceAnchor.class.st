Class {
	#name : #FamixTest2SourceAnchor,
	#superclass : #FamixTest2Entity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Famix-Test2-Entities-Entities'
}

{ #category : #meta }
FamixTest2SourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixTest2Entity>
	<package: #'Famix-Test2-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
FamixTest2SourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixTest2SourceAnchor
]
