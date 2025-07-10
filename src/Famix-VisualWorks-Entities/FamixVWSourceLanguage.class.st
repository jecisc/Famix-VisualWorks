"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `sourcedEntities` | `FamixTSourceLanguage` | `declaredSourceLanguage` | `FamixTWithSourceLanguages` | References to the entities saying explicitly that are written in this language.|



"
Class {
	#name : 'FamixVWSourceLanguage',
	#superclass : 'FamixVWEntity',
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : 'Famix-VisualWorks-Entities-Entities',
	#package : 'Famix-VisualWorks-Entities',
	#tag : 'Entities'
}

{ #category : 'meta' }
FamixVWSourceLanguage class >> annotation [

	<FMClass: #SourceLanguage super: #FamixVWEntity>
	<package: #'Famix-VisualWorks-Entities'>
	<generated>
	^ self
]
