"
I allow an entity to be volatible
ex:

```java
public class SharedObject {
    public volatile int counter = 0;
}
```
"
Trait {
	#name : #FamixJavaTCanBeVolatile,
	#instVars : [
		'#isVolatile => FMProperty defaultValue: false'
	],
	#category : #'Famix-Java-Entities-Traits'
}

{ #category : #meta }
FamixJavaTCanBeVolatile classSide >> annotation [

	<FMClass: #TCanBeVolatile super: #Object>
	<package: #'Famix-Java-Entities'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixJavaTCanBeVolatile >> isVolatile [

	<FMProperty: #isVolatile type: #Boolean defaultValue: false>
	<generated>
	<FMComment: 'Entity can be declared volatile'>
	^ isVolatile ifNil: [ isVolatile := false ]
]

{ #category : #accessing }
FamixJavaTCanBeVolatile >> isVolatile: anObject [
	<generated>
	isVolatile := anObject
]
