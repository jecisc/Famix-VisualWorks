"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `commentedEntity` | `FamixTComment` | `comments` | `FamixTWithComments` | Source code commented by the comment|

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourceAnchor` | `FamixTSourceEntity` | `element` | `FamixTSourceAnchor` | SourceAnchor entity linking to the original source code for this entity|



"
Class {
	#name : 'FamixVWComment',
	#superclass : 'FamixVWSourcedEntity',
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWComment class >> annotation [

	<FMClass: #Comment super: #FamixVWSourcedEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]
