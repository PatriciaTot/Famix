Class {
	#name : #FamixTestComposedCustomEntity2,
	#superclass : #FamixTestComposedEntity,
	#category : #'Famix-TestComposedMetamodel-Entities-Entities'
}

{ #category : #meta }
FamixTestComposedCustomEntity2 class >> annotation [

	<FMClass: #CustomEntity2 super: #FamixTestComposedEntity>
	<package: #'Famix-TestComposedMetamodel-Entities'>
	<generated>
	^ self
]

{ #category : #adding }
FamixTestComposedCustomEntity2 >> addC22: anObject [
	<generated>
	^ self c22s add: anObject
]

{ #category : #adding }
FamixTestComposedCustomEntity2 >> addCustomEntities2: anObject [
	<generated>
	^ self customEntities2 add: anObject
]

{ #category : #accessing }
FamixTestComposedCustomEntity2 >> c22s [
	"Relation named: #c22s type: #FamixTestComposed2CustomEntity2 opposite: #c2"

	<generated>
	<derived>
	<FMProperty: #c22s type: #FamixTestComposed2CustomEntity2 opposite: #c2>
	^ self attributeAt: #c22s ifAbsentPut: [ FMMultivalueLink on: self opposite: #c2: ]
]

{ #category : #accessing }
FamixTestComposedCustomEntity2 >> c22s: anObject [

	<generated>
	self c22s value: anObject
]

{ #category : #accessing }
FamixTestComposedCustomEntity2 >> customEntities2 [
	"Relation named: #customEntities2 type: #FamixTestComposed1CustomEntity2 opposite: #customEntity2"

	<generated>
	<derived>
	<FMProperty: #customEntities2 type: #FamixTestComposed1CustomEntity2 opposite: #customEntity2>
	^ self attributeAt: #customEntities2 ifAbsentPut: [ FMMultivalueLink on: self opposite: #customEntity2: ]
]

{ #category : #accessing }
FamixTestComposedCustomEntity2 >> customEntities2: anObject [

	<generated>
	self customEntities2 value: anObject
]
