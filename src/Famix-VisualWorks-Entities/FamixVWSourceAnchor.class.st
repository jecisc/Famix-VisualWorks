"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|



"
Class {
	#name : 'FamixVWSourceAnchor',
	#superclass : 'FamixVWEntity',
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWSourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #FamixVWEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixVWSourceAnchor class >> isAbstract [

	<generated>
	^ self == FamixVWSourceAnchor
]
