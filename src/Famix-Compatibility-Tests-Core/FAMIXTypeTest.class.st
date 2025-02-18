Class {
	#name : #FAMIXTypeTest,
	#superclass : #FAMIXNamedEntityTest,
	#category : #'Famix-Compatibility-Tests-Core'
}

{ #category : #helpers }
FAMIXTypeTest >> actualClass [
	^ FAMIXType
]

{ #category : #tests }
FAMIXTypeTest >> testBehaviorsWithDeclaredType [
	| type behaviour |
	type := self actualClass new.
	behaviour := FAMIXBehaviouralEntity new.
	behaviour declaredType: type.
	self assert: behaviour declaredType identicalTo: type.
	self assert: type typedEntities size equals: 1.
	self assert: (type typedEntities includes: behaviour)
]

{ #category : #tests }
FAMIXTypeTest >> testStructuresWithDeclaredType [
	| type structure |
	type := self actualClass new.
	structure := FAMIXStructuralEntity new.
	structure declaredType: type.
	self assert: structure declaredType identicalTo: type.
	self assert: type typedEntities size equals: 1.
	self assert: (type typedEntities includes: structure)
]
