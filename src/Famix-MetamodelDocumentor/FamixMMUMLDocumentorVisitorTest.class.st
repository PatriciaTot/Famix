Class {
	#name : #FamixMMUMLDocumentorVisitorTest,
	#superclass : #FamixMMUMLDocumentorAbstractTest,
	#category : #'Famix-MetamodelDocumentor-tests'
}

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testTypeOfExternal [
	| contents |
	contents := FamixMMUMLDocumentor new
		beWithStub;
 		model: FDModel ;
 		generatePlantUMLModel. 
		
	self assert: [ contents includesSubstring: 'class Model <<(C,LightYellow)External>>' ].
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitClassNoAttributes [

	documentor visitClass: (self famixClassFor: FamixTest4Book).
	
	self
		assert: stream contents
		equals:
'class Book << (C,white) >> #FFFFFF {
}
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitClassWithAttributes [

	documentor visitClass: (self famixClassFor: FamixTest4Entity).
	
	self
		assert: stream contents
		equals:
'class Entity << (C,white) >> #FFFFFF {
  String name
}
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitInheritance [
	| person student |
	person := self famixClassFor: FamixTest4Person.
	student := self famixClassFor: FamixTest4Student. 
	documentor
		classesOfInterest: { person . student } ;
		visitInheritance: person sub: student.
		
	self assert: documentor externalClasses isEmpty.
	self
		assert: stream contents
		equals:
'Person <|-- Student
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitInheritanceFromExternal [
	| person student |
	person := self famixClassFor: FamixTest4Person.
	student := self famixClassFor: FamixTest4Student. 
	documentor
		beWithStub ;
		classesOfInterest: {  person } ;
		visitInheritance: person sub: student.
		
	self assert: documentor externalClasses notEmpty.
	self
		assert: stream contents
		equals:
'Person <|-- Student
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitInheritanceToExternal [
	| person student |
	person := self famixClassFor: FamixTest4Person.
	student := self famixClassFor: FamixTest4Student. 
	documentor
		beWithStub ;
		classesOfInterest: {  student } ;
		visitInheritance: person sub: student.
		
	self assert: documentor externalClasses notEmpty.
	self
		assert: stream contents
		equals:
'Person <|-- Student
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitRelationContainer [
	| principal school | 
	principal := self famixClassFor: FamixTest4Principal.
	school := self famixClassFor: FamixTest4School.
	documentor
		classesOfInterest: { principal . school } ;
		visitRelation: (self famixProperty: 'school' in: FamixTest4Principal).
		
	self assert: documentor externalClasses isEmpty.
	self
		assert: stream contents
		equals:
'Principal "principal" --o "school" School
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitRelationContainerSourceMany [
	| book person | 
	book := self famixClassFor: FamixTest4Book.
	person := self famixClassFor: FamixTest4Person.
	documentor
		classesOfInterest: { person . book } ;
		visitRelation: (self famixProperty: 'person' in: FamixTest4Book).
		
	self assert: documentor externalClasses isEmpty.
	self
		assert: stream contents
		equals:
'Book " *books" --o "person" Person
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitRelationNoContainer [
	| student teacher | 
	student := self famixClassFor: FamixTest4Student.
	teacher := self famixClassFor: FamixTest4Teacher.
	documentor
		classesOfInterest: { teacher . student } ;
		visitRelation: (self famixProperty: 'students' in: FamixTest4Teacher).
		
	self assert: documentor externalClasses isEmpty.
	self
		assert: stream contents
		equals:
'Teacher " *teachers" -- " *students" Student
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitRelationToExternalClass [
	| student teacher | 
	student := self famixClassFor: FamixTest4Student.
	teacher := self famixClassFor: FamixTest4Teacher.
	documentor
		classesOfInterest: { teacher } ;
		beWithStub ;
		visitRelation: (self famixProperty: 'students' in: FamixTest4Teacher).
		
	self assert: documentor externalClasses notEmpty.
	self
		assert: stream contents
		equals:
'Teacher " *teachers" -- " *students" Student
'
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitTraitUsed [
	| contents |
	contents := FamixMMUMLDocumentor new
 		model: FDModel ;
 		generatePlantUMLModel. 
		
	self assert: [ contents includesSubstring: 'Trait1 <|.. Trait2' ].
	self assert: [ contents includesSubstring: 'Trait2 <|.. Trait3' ].
	self assert: [ contents includesSubstring: 'Trait2 <|.. Trait4' ].
	self assert: [ (contents includesSubstring: 'Trait1 <|.. Trait4')not ].
	self assert: [ (contents includesSubstring: 'Trait1 <|.. Trait3')not ].
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitWithoutClasses [
	| contents |
	contents := FamixMMUMLDocumentor new
 		model: FDModel ;
 		generatePlantUMLModelWithout: { }. 
	
	contents := FamixMMUMLDocumentor new
 		model: FDModel ;
 		generatePlantUMLModelWithout: { FDTrait1 . FDTrait2 }.
		
	self assert: [ contents includesSubstring: 'hide Trait1' ].
	self assert: [ (contents allButFirst: 450) includesSubstring: 'hide Trait2' ].
]

{ #category : #tests }
FamixMMUMLDocumentorVisitorTest >> testVisitWithoutClassesWithEmptyCollection [
	| contents |
	contents := FamixMMUMLDocumentor new
 		model: FDModel ;
 		generatePlantUMLModelWithout: { }. 
	
	self assert: [ ((contents allButFirst: 30) includesSubstring: 'hide')not ].
]
