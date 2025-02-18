Trait {
	#name : #FamixTReferenceable,
	#instVars : [
		'#incomingReferences => FMMany type: #FamixTReference opposite: #referredType'
	],
	#category : #'Famix-Traits-Reference'
}

{ #category : #meta }
FamixTReferenceable classSide >> annotation [

	<FMClass: #TReferenceable super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTReferenceable >> addIncomingReference: aReference [ 
	incomingReferences add: aReference
]

{ #category : #accessing }
FamixTReferenceable >> incomingReferences [
	"Relation named: #incomingReferences type: #FamixTReference opposite: #referredType"

	<generated>
	<FMComment: 'References to this entity by other entities.'>
	<derived>
	^ incomingReferences
]

{ #category : #accessing }
FamixTReferenceable >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject
]
