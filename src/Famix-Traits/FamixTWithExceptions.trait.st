Trait {
	#name : #FamixTWithExceptions,
	#instVars : [
		'#caughtExceptions => FMMany type: #FamixTException opposite: #catchingEntities',
		'#declaredExceptions => FMMany type: #FamixTException opposite: #declaringEntities',
		'#thrownExceptions => FMMany type: #FamixTException opposite: #throwingEntities'
	],
	#category : #'Famix-Traits-Exception'
}

{ #category : #meta }
FamixTWithExceptions classSide >> annotation [

	<FMClass: #TWithExceptions super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^ self
]

{ #category : #adding }
FamixTWithExceptions >> addCaughtException: anObject [
	<generated>
	^ self caughtExceptions add: anObject
]

{ #category : #adding }
FamixTWithExceptions >> addDeclaredException: anObject [
	<generated>
	^ self declaredExceptions add: anObject
]

{ #category : #adding }
FamixTWithExceptions >> addThrownException: anObject [
	<generated>
	^ self thrownExceptions add: anObject
]

{ #category : #accessing }
FamixTWithExceptions >> caughtExceptions [
	"Relation named: #caughtExceptions type: #FamixTException opposite: #catchingEntities"

	<generated>
	<FMComment: 'The exceptions caught by the method'>
	^ caughtExceptions
]

{ #category : #accessing }
FamixTWithExceptions >> caughtExceptions: anObject [

	<generated>
	caughtExceptions value: anObject
]

{ #category : #accessing }
FamixTWithExceptions >> declaredExceptions [
	"Relation named: #declaredExceptions type: #FamixTException opposite: #declaringEntities"

	<generated>
	<FMComment: 'The exceptions declared by the method'>
	^ declaredExceptions
]

{ #category : #accessing }
FamixTWithExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject
]

{ #category : #accessing }
FamixTWithExceptions >> thrownExceptions [
	"Relation named: #thrownExceptions type: #FamixTException opposite: #throwingEntities"

	<generated>
	<FMComment: 'The exceptions thrown by the method'>
	^ thrownExceptions
]

{ #category : #accessing }
FamixTWithExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject
]
