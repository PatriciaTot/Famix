Class {
	#name : #FAMIXFunctionTest,
	#superclass : #FAMIXNamedEntityTest,
	#category : #'Famix-Compatibility-Tests-Core'
}

{ #category : #helpers }
FAMIXFunctionTest >> actualClass [
	^ FAMIXFunction
]

{ #category : #tests }
FAMIXFunctionTest >> testHandlingOfWrongSourceAnchor [
	"some exporters populate the name of a file in the sourceAnchor, 
	and this test checks that Moose can handle this situation"

	| function |
	function := self actualClass new.
	function sourceAnchor: (FAMIXSourceTextAnchor source: 'pathtosomefile').
	self assert: function sourceText equals: 'pathtosomefile'
]

{ #category : #tests }
FAMIXFunctionTest >> testIsMethod [
	self deny: self actualClass new isMethod
]

{ #category : #tests }
FAMIXFunctionTest >> testIsPublic [
	| entity |
	entity := self actualClass new.
	entity isPublic: true.
	self deny: entity isPublic 
]
