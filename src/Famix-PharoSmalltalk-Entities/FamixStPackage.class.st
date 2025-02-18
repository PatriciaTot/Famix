Class {
	#name : #FamixStPackage,
	#superclass : #FamixStNamedEntity,
	#traits : 'FamixTCohesionCouplingMetrics + FamixTPackage + FamixTWithClasses + FamixTWithGlobalVariables',
	#classTraits : 'FamixTCohesionCouplingMetrics classTrait + FamixTPackage classTrait + FamixTWithClasses classTrait + FamixTWithGlobalVariables classTrait',
	#category : #'Famix-PharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FamixStPackage class >> annotation [

	<FMClass: #Package super: #FamixStNamedEntity>
	<package: #'Famix-PharoSmalltalk-Entities'>
	<generated>
	^ self
]

{ #category : #'Famix-Extensions-metrics' }
FamixStPackage >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<FMProperty: #abstractness type: #Number>
	<derived>
	<FMComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #'Famix-Extensions' }
FamixStPackage >> allClasses [
	^self classes union: self extensionClasses
]

{ #category : #accessing }
FamixStPackage >> classes [
	^ self cacheAt: #classes ifAbsentPut: [ self childEntities select: [ :child | child isClass ] ]
]

{ #category : #accessing }
FamixStPackage >> extendedClasses [
	"select all classes extended in this package"

	^ self cacheAt: #extendedClasses ifAbsentPut: [ self classes select: [ :c | c isExtended ] ]
]

{ #category : #accessing }
FamixStPackage >> extensionClasses [
	"select all classes extended by this package"

	^ self cacheAt: #extensionClasses ifAbsentPut: [ self extensionMethods collectAsSet: [ :method | method parentType ] ]
]

{ #category : #accessing }
FamixStPackage >> extensionMethods [
	"select all class extensions made by this package"

	^ self cacheAt: #extensionMethods ifAbsentPut: [ self childEntities select: [ :child | child isMethod ] ]
]

{ #category : #accessing }
FamixStPackage >> localClasses [
	"select all local classes. Just an alias"

	^ self classes
]

{ #category : #accessing }
FamixStPackage >> localClassesGroup [
	<navigation: 'Local classes'>

	^ FamixClassGroup 
		withAll: self localClasses
		withDescription: 'Local classes'
]

{ #category : #accessing }
FamixStPackage >> localMethods [
	"select all local methods"

	^ self cacheAt: #localMethods ifAbsentPut: [ self classes flatCollect: [ :c | c localMethods ] ]
]

{ #category : #accessing }
FamixStPackage >> methods [
	^ self localMethods union: self extensionMethods
]

{ #category : #accessing }
FamixStPackage >> numberOfClientPackages [
	<FMProperty: #numberOfClientPackages type: #Number>
	<FMComment: 'The number of packages which depend on this package'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfClientPackages computedAs: [ self allClients size ]
]

{ #category : #accessing }
FamixStPackage >> numberOfClientPackages: aNumber [
	self cacheAt: #numberOfClientPackages put: aNumber
]

{ #category : #accessing }
FamixStPackage >> relativeImportanceForSystem [
	<FMProperty: #relativeImportanceForSystem type: #Number>
	<derived>
	<FMComment: 'The number of client packages normalized by the total number of packages'>
	
	^ self lookUpPropertyNamed: #relativeImportanceForSystem
				 computedAs: [
					(self mooseModel allModelPackages size > 1)
						ifTrue:[
							self numberOfClientPackages / (self mooseModel allModelPackages size - 1)
							]
						ifFalse: [0]
						]
]
