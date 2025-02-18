"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Trait {
	#name : #FamixTDereferencedInvocation,
	#instVars : [
		'#referencer => FMOne type: #FamixTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#traits : 'FamixTInvocation',
	#classTraits : 'FamixTInvocation classTrait',
	#category : #'Famix-Traits-DereferencedInvocation'
}

{ #category : #meta }
FamixTDereferencedInvocation classSide >> annotation [

	<FMClass: #TDereferencedInvocation super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTDereferencedInvocation >> referencer [
	"Relation named: #referencer type: #FamixTWithDereferencedInvocations opposite: #dereferencedInvocations"

	<generated>
	<FMComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FamixTDereferencedInvocation >> referencer: anObject [

	<generated>
	referencer := anObject
]
