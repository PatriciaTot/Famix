Class {
	#name : #MooseMSEImporterTestNamedEntity,
	#superclass : #MooseMSEImporterTestEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Moose-Core-Tests-Entities-Entities'
}

{ #category : #meta }
MooseMSEImporterTestNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #MooseMSEImporterTestEntity>
	<package: #'Moose-Core-Tests-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
MooseMSEImporterTestNamedEntity class >> isAbstract [

	<generated>
	^ self == MooseMSEImporterTestNamedEntity
]
