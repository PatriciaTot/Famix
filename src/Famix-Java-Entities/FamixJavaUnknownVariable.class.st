Class {
	#name : #FamixJavaUnknownVariable,
	#superclass : #FamixJavaNamedEntity,
	#traits : 'FamixTInvocationsReceiver + FamixTUnknownVariable',
	#classTraits : 'FamixTInvocationsReceiver classTrait + FamixTUnknownVariable classTrait',
	#category : #'Famix-Java-Entities-Entities'
}

{ #category : #meta }
FamixJavaUnknownVariable class >> annotation [

	<FMClass: #UnknownVariable super: #FamixJavaNamedEntity>
	<package: #'Famix-Java-Entities'>
	<generated>
	^ self
]
