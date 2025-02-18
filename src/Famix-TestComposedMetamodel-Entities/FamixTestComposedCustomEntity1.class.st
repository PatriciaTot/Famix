Class {
	#name : #FamixTestComposedCustomEntity1,
	#superclass : #FamixTestComposedEntity,
	#category : #'Famix-TestComposedMetamodel-Entities-Entities'
}

{ #category : #meta }
FamixTestComposedCustomEntity1 class >> annotation [

	<FMClass: #CustomEntity1 super: #FamixTestComposedEntity>
	<package: #'Famix-TestComposedMetamodel-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTestComposedCustomEntity1 >> c21 [
	"Relation named: #c21 type: #FamixTestComposed2CustomEntity1 opposite: #c1"

	<generated>
	<FMProperty: #c21 type: #FamixTestComposed2CustomEntity1 opposite: #c1>
	^ self attributeAt: #c21 ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixTestComposedCustomEntity1 >> c21: anObject [

	<generated>
	(self attributeAt: #c21 ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self c21.
		self attributeAt: #c21 put: anObject.
		otherSide c1: nil ]
	ifNotNil: [ 
		self attributeAt: #c21 put: anObject.
		anObject c1: self ]
]

{ #category : #accessing }
FamixTestComposedCustomEntity1 >> customEntity1 [
	"Relation named: #customEntity1 type: #FamixTestComposed1CustomEntity1 opposite: #customEntity1"

	<generated>
	<FMProperty: #customEntity1 type: #FamixTestComposed1CustomEntity1 opposite: #customEntity1>
	^ self attributeAt: #customEntity1 ifAbsent: [ nil ]
]

{ #category : #accessing }
FamixTestComposedCustomEntity1 >> customEntity1: anObject [

	<generated>
	(self attributeAt: #customEntity1 ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self customEntity1.
		self attributeAt: #customEntity1 put: anObject.
		otherSide customEntity1: nil ]
	ifNotNil: [ 
		self attributeAt: #customEntity1 put: anObject.
		anObject customEntity1: self ]
]

{ #category : #navigation }
FamixTestComposedCustomEntity1 >> customEntity1Group [
	<generated>
	<navigation: 'CustomEntity1'>
	^ MooseSpecializedGroup with: self customEntity1
]
