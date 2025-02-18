Class {
	#name : #MooseGroupTest,
	#superclass : #MooseAbstractGroupTest,
	#category : #'Moose-Core-Tests'
}

{ #category : #helpers }
MooseGroupTest >> actualClass [
	^ MooseGroup
]

{ #category : #tests }
MooseGroupTest >> testAsMooseGroup [
	group := #(1 2 3) asMooseGroup.
	self assert: (group isKindOf: MooseGroup).
	self assert: group size equals: 3
]

{ #category : #tests }
MooseGroupTest >> testAsMooseGroupDoNotCopy [
	self assert: group asMooseGroup identicalTo: group
]

{ #category : #tests }
MooseGroupTest >> testAsMooseGroupWithClasses [
	"Non regression test of issue https://github.com/moosetechnology/Moose/issues/1486"

	self shouldnt: [ group := {Object} asMooseGroup ] raise: Error.
	self assert: group size equals: 1.
	self assert: group anyOne equals: Object
]

{ #category : #tests }
MooseGroupTest >> testDefaultStorage [
	self assert: (group entityStorage isKindOf: MooseGroupRuntimeStorage)
]

{ #category : #tests }
MooseGroupTest >> testDefaultStorageIterator [
	self assert: group entityStorage iterator class equals: IteratorWithCollectionAPI
]

{ #category : #tests }
MooseGroupTest >> testDistribution [
	| referenceGroupOfGroups |
	referenceGroupOfGroups := self actualClass new.
	referenceGroupOfGroups add: (self actualClass withAll: #(1 2 3)).
	referenceGroupOfGroups add: (self actualClass withAll: #(4 5 6 7 8)).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 0.
	group := self actualClass withAll: #(1 2 3).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 1.
	group := self actualClass withAll: #(1 2).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3.
	group := self actualClass withAll: #(1 2 4 5).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3 + (2 / 5)
]

{ #category : #tests }
MooseGroupTest >> testDistributionAndEncapsulation [
	| referenceGroupOfGroups |
	referenceGroupOfGroups := self actualClass new.
	referenceGroupOfGroups add: (self actualClass withAll: #(1 2 3)).
	referenceGroupOfGroups add: (self actualClass withAll: #(4 5 6 7 8)).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 0.
	self assert: (group encapsulationOfAGroupOfGroups: referenceGroupOfGroups) equals: 0.
	group := self actualClass withAll: #(1 2 3).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 1.
	self assert: (group encapsulationOfAGroupOfGroups: referenceGroupOfGroups) equals: 1.
	group := self actualClass withAll: #(1 2).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3.
	self assert: (group encapsulationOfAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3.
	group := self actualClass withAll: #(1 2 4 5).
	self assert: (group distributionOverAGroupOfGroups: referenceGroupOfGroups) equals: 2 / 3 + (2 / 5).
	self assert: (group encapsulationOfAGroupOfGroups: referenceGroupOfGroups) equals: 4 / 12 + (4 / 20)
]

{ #category : #tests }
MooseGroupTest >> testEntityNamedIfAbsentPutWithCorrectEntityAsParameter [
	| testClass |
	testClass := FamixTest1Class new.
	testClass name: 'MyTestMethod'.
	self
		assert: (group entityNamed: 'MyTestMethod' ifAbsentPut: [ testClass ])
		identicalTo: testClass
]

{ #category : #tests }
MooseGroupTest >> testEntityNamedIfAbsentPutWithIncorrectEntityAsParameter [
	| testClass |
	testClass := FamixTest1Class new.
	testClass name: 'MyTestMethod'.
	self
		should:
			[ group entityNamed: 'NonExistingMooseName' ifAbsentPut: [ testClass ] ]
		raise: Error
]

{ #category : #tests }
MooseGroupTest >> testExplicitEmptyCreation [
	self assert: ((FamixTypeGroup withAll: #()) isKindOf: FamixTypeGroup)
]

{ #category : #tests }
MooseGroupTest >> testInitialization [
	| group1 group2 |
	group1 := self actualClass with: 1.
	group2 := self actualClass with: 1 withDescription: 'Group number 2'.
	self assert: group1 entities equals: group2 entities.
	self assert: group2 description equals: 'Group number 2'.
	self assert: group1 description equals: 'Group'
]

{ #category : #tests }
MooseGroupTest >> testIsOfType [
	| mGroup entity object |
	mGroup := MooseGroup new.
	entity := MooseEntity new.
	object := MooseObject new.
	self assert: (mGroup isOfType: MooseAbstractGroup).
	self assert: (entity isOfType: MooseEntity).
	self deny: (object isOfType: MooseEntity).
	self deny: (object isOfType: MooseGroup).
	self deny: (mGroup isOfType: MooseEntity)
]

{ #category : #tests }
MooseGroupTest >> testNumberOfPackages [

	self assert: group numberOfPackages equals: 0.
	group add: FamixStPackage new.
	group add: FamixStPackage new.
	self assert: group numberOfPackages equals: 2.
	group := MooseModel new.
	group add: FamixStNamespace new.
	group add: FamixStNamespace new.
	self assert: group numberOfPackages equals: 0
]

{ #category : #tests }
MooseGroupTest >> testObjectAsMooseGroup [
	group := 42 asMooseGroup.
	self assert: (group isKindOf: MooseGroup).
	self assert: group size equals: 1.
	self assert: group first equals: 42
]

{ #category : #tests }
MooseGroupTest >> testSort [
	group addAll: #(4 3 1 2).
	self assertCollection: (group sorted: #yourself ascending) hasSameElements: #(1 2 3 4)
]
