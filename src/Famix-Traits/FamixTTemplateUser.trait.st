Trait {
	#name : #FamixTTemplateUser,
	#instVars : [
		'#template => FMOne type: #FamixTTemplate opposite: #templateUsers'
	],
	#category : #'Famix-Traits-Template'
}

{ #category : #meta }
FamixTTemplateUser classSide >> annotation [

	<FMClass: #TTemplateUser super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^ self
]

{ #category : #accessing }
FamixTTemplateUser >> template [
	"Relation named: #template type: #FamixTTemplate opposite: #templateUsers"

	<generated>
	^ template
]

{ #category : #accessing }
FamixTTemplateUser >> template: anObject [

	<generated>
	template := anObject
]
