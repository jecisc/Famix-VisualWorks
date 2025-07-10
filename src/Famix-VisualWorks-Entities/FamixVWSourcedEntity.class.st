"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|



"
Class {
	#name : 'FamixVWSourcedEntity',
	#superclass : 'FamixVWEntity',
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixVWEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FamixVWSourcedEntity class >> isAbstract [

	<generated>
	^ self == FamixVWSourcedEntity
]
